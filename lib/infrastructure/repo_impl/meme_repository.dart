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
            another:
                (Object value) =>
                    CommonFailure.other(message: value.toString()),
          ),
        ),
        (data) {
          Logger().i('Fetched memes successfully: $data');
          Logger().i(
            'Fetched memes successfully:  -> ${data['data'].runtimeType}',
          );
          final memes =
              (data['data']['memes'] as List)
                  .map((meme) => Meme.fromJson(Map<String, dynamic>.from(meme)))
                  .toList();
          return Right(memes);
        },
      );
    } catch (e) {
      Logger().e('Error fetching memes: $e');
      return left(CommonFailure.other(message: e.toString()));
    }
  }
}
