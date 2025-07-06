import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:meme_editor_app/shared/model/network_failure.dart';

class MemeApi {
  late final Connectivity _connectivity;
  late final Dio _dio;
  MemeApi(this._connectivity, this._dio);
  Future<Either<NetworkFailure, Map<String, dynamic>>> fetchMemes() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.none)) {
        // TODO : Get Data from local storage
        return left(NetworkFailure.noInternet());
      }
      final response = await _dio.get('https://api.imgflip.com/get_memes');
      if (response.statusCode != 200) {
        return left(NetworkFailure.serverError(response: response));
      }
      return right(response.data as Map<String, dynamic>);
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
    }
  }
}
