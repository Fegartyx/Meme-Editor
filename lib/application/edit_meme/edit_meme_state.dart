part of "edit_meme_bloc.dart";

class EditMemeState {
  final List<Draw> texts;
  final List<Draw> cache;
  final TextEditingController textController;
  final bool enableEditing;

  EditMemeState({
    required this.texts,
    required this.textController,
    required this.cache,
    required this.enableEditing,
  });

  factory EditMemeState.initial() {
    return EditMemeState(
      texts: const [],
      textController: TextEditingController(),
      cache: const [],
      enableEditing: false,
    );
  }

  EditMemeState copyWith({
    List<Draw>? texts,
    TextEditingController? textController,
    List<Draw>? cache,
    bool? enableEditing,
  }) {
    return EditMemeState(
      cache: cache ?? this.cache,
      texts: texts ?? this.texts,
      textController: textController ?? this.textController,
      enableEditing: enableEditing ?? this.enableEditing,
    );
  }
}
