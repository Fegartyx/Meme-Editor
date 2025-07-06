import 'package:fpdart/fpdart.dart';
import 'package:meme_editor_app/domain/model/meme.dart';
import 'package:meme_editor_app/shared/model/common_failure.dart';

class MemeState {
  final Option<Either<CommonFailure, List<Meme>>> successOrFailureMeme;
  final bool isLoading;

  MemeState({required this.successOrFailureMeme, required this.isLoading});

  factory MemeState.initial() {
    return MemeState(successOrFailureMeme: none(), isLoading: false);
  }

  MemeState copyWith({
    Option<Either<CommonFailure, List<Meme>>>? successOrFailureMeme,
    bool? isLoading,
  }) {
    return MemeState(
      successOrFailureMeme: successOrFailureMeme ?? this.successOrFailureMeme,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
