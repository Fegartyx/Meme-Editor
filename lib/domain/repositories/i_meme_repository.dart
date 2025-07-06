import 'package:fpdart/fpdart.dart';

import '../../shared/model/common_failure.dart';
import '../model/meme.dart';

abstract interface class IMemeRepository {
  Future<Either<CommonFailure, List<Meme>>> getMemes();
}
