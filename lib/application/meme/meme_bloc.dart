import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:meme_editor_app/domain/repositories/i_meme_repository.dart';

import 'meme_event.dart';
import 'meme_state.dart';

class MemeBloc extends Bloc<MemeEvent, MemeState> {
  final IMemeRepository _memeRepository;
  MemeBloc(this._memeRepository) : super(MemeState.initial()) {
    on<MemeEvent>(_onEvent);
  }

  void _onEvent(MemeEvent event, Emitter<MemeState> emit) async {
    switch (event) {
      case MemeEventStarted():
        emit(state.copyWith(isLoading: true));
        final failureOrSuccess = await _memeRepository.getMemes();
        emit(
          state.copyWith(
            successOrFailureMeme: optionOf(failureOrSuccess),
            isLoading: false,
          ),
        );
        break;
      case MemeEventFilter(filter: String filter):
        emit(state.copyWith(isLoading: true));
        final failureOrSuccess = await _memeRepository.getMemes();
        break;
    }
  }
}
