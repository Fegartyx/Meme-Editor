part of "edit_meme_bloc.dart";

sealed class EditMemeEvent {}

class EditMemeEventSubmitText extends EditMemeEvent {
  final Offset position;

  EditMemeEventSubmitText({required this.position});
}

class EditMemeEventAddSticker extends EditMemeEvent {
  final String stickerPath;
  final Offset position;

  EditMemeEventAddSticker({required this.stickerPath, required this.position});
}

class EditMemeEventDraggingText extends EditMemeEvent {
  final Offset position;
  final String id;

  EditMemeEventDraggingText({required this.position, required this.id});
}

class EditMemeEventUndo extends EditMemeEvent {}

class EditMemeEventRedo extends EditMemeEvent {}

class EditMemeEventExport extends EditMemeEvent {
  final GlobalKey repaintKey;

  EditMemeEventExport({required this.repaintKey});
}

class EditMemeEventShare extends EditMemeEvent {
  final GlobalKey repaintKey;

  EditMemeEventShare({required this.repaintKey});
}

class EditMemeEventToggleEditing extends EditMemeEvent {}
