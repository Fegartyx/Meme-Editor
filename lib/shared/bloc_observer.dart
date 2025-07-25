import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class SimpleObserver extends BlocObserver {
  SimpleObserver({required this.logger});
  final Logger logger;

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d('$event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d('$transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('Error', error: error, stackTrace: stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.d('$bloc, $change');
  }
}
