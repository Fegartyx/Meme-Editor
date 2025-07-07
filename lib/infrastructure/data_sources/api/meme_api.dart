import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:meme_editor_app/shared/model/network_failure.dart';

class MemeApi {
  late final Connectivity _connectivity;
  late final Dio _dio;
  MemeApi(this._connectivity, this._dio);

  static const String _memeBoxName = 'memeBox';
  static const String _memeDataKey = 'memeData';
  Future<Either<NetworkFailure, Map<String, dynamic>>> fetchMemes() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      final box = await Hive.openBox<Map>(_memeBoxName);
      if (connectivityResult.contains(ConnectivityResult.none)) {
        Logger().i(
          'No internet connection. Attempting to load data from Hive.',
        );
        final localData = box.get(_memeDataKey);
        Logger().i('Successfully loaded data from Hive. : $localData');
        if (localData != null) {
          return right(Map<String, dynamic>.from(localData));
        } else {
          Logger().w('No internet connection and no data found in Hive.');
          return left(NetworkFailure.noInternet());
        }
      }
      final response = await _dio.get('https://api.imgflip.com/get_memes');
      Logger().i('Response data: ${response.data}');
      if (response.statusCode != 200) {
        return left(NetworkFailure.serverError(response: response));
      }

      final responseData = response.data as Map<String, dynamic>;

      // Save data to Hive after successful network fetch
      await box.put(_memeDataKey, responseData);
      Logger().i('Successfully saved data to Hive.');

      return right(responseData);
    } on DioException catch (e) {
      Logger().e('Error fetching memes: ${e.message}');
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return left(NetworkFailure.timeout());
      } else if (e.type == DioExceptionType.badResponse) {
        return left(NetworkFailure.serverError(response: e.response));
      }
      return left(NetworkFailure.other(e: e));
    } catch (e) {
      Logger().e('Unexpected error: $e');
      return left(NetworkFailure.another(value: e));
    } finally {
      if (Hive.isBoxOpen(_memeBoxName)) {
        await Hive.box<Map>(_memeBoxName).close();
      }
    }
  }
}
