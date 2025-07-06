import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meme_editor_app/infrastructure/data_sources/api/meme_api.dart';

import '../domain/repositories/i_meme_repository.dart';
import '../infrastructure/repo_impl/meme_repository.dart';

final GetIt getIt = GetIt.instance;

void configureInjection() {
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<MemeApi>(
    () => MemeApi(getIt<Connectivity>(), getIt<Dio>()),
  );
}

void setupLocator() {
  configureInjection();
  // You can register other services or repositories here if needed
  getIt.registerLazySingleton<IMemeRepository>(
    () => MemeRepository(getIt<MemeApi>()),
  );
}

void resetLocator() {
  getIt.reset();
  configureInjection();
}
