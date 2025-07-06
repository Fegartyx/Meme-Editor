import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failure.freezed.dart';

@freezed
abstract class CommonFailure with _$CommonFailure {
  const factory CommonFailure.noInternet() = NoInternet;
  const factory CommonFailure.serverError({required String? message}) =
      ServerError;
  const factory CommonFailure.timeout() = Timeout;
  const factory CommonFailure.parseError({required String message}) =
      ParseError;
  const factory CommonFailure.valueError({required String message}) =
      ValueError;
  const factory CommonFailure.other({required String message}) = Other;
}
