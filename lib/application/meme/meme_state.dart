part of 'meme_bloc.dart';

class MemeState {
  final Option<Either<CommonFailure, List<Meme>>> successOrFailureMeme;
  final List<Meme> memes;
  final bool isLoading;
  final RefreshController refreshController;
  final TextEditingController searchController;

  MemeState({
    required this.successOrFailureMeme,
    required this.isLoading,
    required this.refreshController,
    required this.searchController,
    this.memes = const [],
  });

  factory MemeState.initial() {
    return MemeState(
      successOrFailureMeme: none(),
      isLoading: false,
      refreshController: RefreshController(),
      searchController: TextEditingController(),
      memes: const [],
    );
  }

  MemeState copyWith({
    Option<Either<CommonFailure, List<Meme>>>? successOrFailureMeme,
    bool? isLoading,
    RefreshController? refreshController,
    TextEditingController? searchController,
    List<Meme>? memes,
  }) {
    return MemeState(
      successOrFailureMeme: successOrFailureMeme ?? this.successOrFailureMeme,
      isLoading: isLoading ?? this.isLoading,
      refreshController: refreshController ?? this.refreshController,
      searchController: searchController ?? this.searchController,
      memes: memes ?? this.memes,
    );
  }
}
