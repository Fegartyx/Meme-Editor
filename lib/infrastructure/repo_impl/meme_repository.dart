import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:meme_editor_app/shared/model/network_failure.dart';

import '../../domain/model/meme.dart';
import '../../domain/repositories/i_meme_repository.dart';
import '../../shared/model/common_failure.dart';
import '../data_sources/api/meme_api.dart';

class MemeRepository implements IMemeRepository {
  final MemeApi _memeApi;

  MemeRepository(this._memeApi);

  @override
  Future<Either<CommonFailure, List<Meme>>> getMemes() async {
    try {
      final response = await _memeApi.fetchMemes();
      return response.fold(
        (l) => left(
          l.when(
            noInternet: () => CommonFailure.noInternet(),
            serverError:
                (response) =>
                    CommonFailure.serverError(message: response.toString()),
            timeout: () => CommonFailure.timeout(),
            other: (e) => CommonFailure.other(message: e.toString()),
          ),
        ),
        (data) {
          final memes =
              (data['data'] as List)
                  .map((meme) => Meme.fromJson(meme as Map<String, dynamic>))
                  .toList();
          return Right(memes);
        },
      );
    } catch (e) {
      Logger().e('Error fetching memes: $e');
      throw Exception('Failed to fetch memes: $e');
    }
  }
}
