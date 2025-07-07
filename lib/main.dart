import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logger/logger.dart';
import 'package:meme_editor_app/domain/repositories/i_meme_repository.dart';
import 'package:meme_editor_app/shared/bloc_observer.dart';
import 'package:meme_editor_app/shared/injection.dart';
import 'package:meme_editor_app/shared/routes.dart';

import 'application/meme/meme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleObserver(logger: Logger());
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  MemeBloc(getIt<IMemeRepository>())..add(MemeEventStarted()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: goRoute,
        debugShowCheckedModeBanner: true,
      ),
    );
  }
}
