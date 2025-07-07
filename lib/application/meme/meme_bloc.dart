import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:meme_editor_app/domain/model/meme.dart';
import 'package:meme_editor_app/domain/repositories/i_meme_repository.dart';
import 'package:meme_editor_app/shared/model/common_failure.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

part 'meme_event.dart';
part 'meme_state.dart';

class MemeBloc extends Bloc<MemeEvent, MemeState> {
  final IMemeRepository _memeRepository;
  MemeBloc(this._memeRepository) : super(MemeState.initial()) {
    on<MemeEvent>(_onEvent);
  }

  void _onEvent(MemeEvent event, Emitter<MemeState> emit) async {
    switch (event) {
      case MemeEventStarted():
        emit(state.copyWith(isLoading: true, successOrFailureMeme: none()));
        final failureOrSuccess = await _memeRepository.getMemes();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              successOrFailureMeme: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (memes) => emit(
            state.copyWith(
              successOrFailureMeme: optionOf(failureOrSuccess),
              memes: memes,
              isLoading: false,
            ),
          ),
        );
        // emit(
        //   state.copyWith(
        //     successOrFailureMeme: optionOf(failureOrSuccess),
        //     isLoading: false,
        //   ),
        // );
        break;
      case MemeEventFilter(filter: String filter):
        emit(state.copyWith(isLoading: true, memes: const []));
        final failureOrSuccess = await _memeRepository.getMemes();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              successOrFailureMeme: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (memes) {
            final filteredMemes =
                memes
                    .where(
                      (meme) => meme.name.toLowerCase().contains(
                        filter.toLowerCase(),
                      ),
                    )
                    .toList();
            emit(
              state.copyWith(
                successOrFailureMeme: optionOf(failureOrSuccess),
                memes: filteredMemes,
                isLoading: false,
              ),
            );
          },
        );
        break;
    }
  }
}
