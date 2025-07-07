import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
abstract class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.noInternet() = _NoInternet;
  const factory NetworkFailure.serverError({Response? response}) = _ServerError;
  const factory NetworkFailure.timeout() = _Timeout;
  const factory NetworkFailure.other({required DioException e}) = _Other;
  const factory NetworkFailure.another({required Object value}) = _Another;
}
