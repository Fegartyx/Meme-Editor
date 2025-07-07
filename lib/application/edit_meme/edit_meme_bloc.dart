import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:meme_editor_app/domain/model/draw_text.dart';
import 'package:meme_editor_app/shared/common_utils.dart';

part 'edit_meme_event.dart';
part 'edit_meme_state.dart';

class EditMemeBloc extends Bloc<EditMemeEvent, EditMemeState> {
  EditMemeBloc() : super(EditMemeState.initial()) {
    on<EditMemeEvent>(_onEvent);
  }

  void _onEvent(EditMemeEvent event, Emitter<EditMemeState> emit) async {
    switch (event) {
      case EditMemeEventSubmitText(position: Offset position):
        final text = state.textController.text.trim();
        if (text.isNotEmpty) {
          final newText = Draw(
            id: DateTime.now().toIso8601String(),
            text: text,
            offset: position,
            color: const Color(0xFFFFFFFF),
          );
          final updatedTexts = List<Draw>.from(state.texts)..add(newText);
          emit(
            state.copyWith(
              texts: updatedTexts,
              textController: TextEditingController(),
              enableEditing: false,
            ),
          );
        } else {
          emit(state.copyWith(enableEditing: false));
        }
        break;
      case EditMemeEventAddSticker(
        stickerPath: String stickerPath,
        position: Offset position,
      ):
        final newSticker = Draw(
          id: DateTime.now().toIso8601String(),
          text: null,
          offset: position,
          color: const Color(0xFFFFFFFF),
          isSticker: true,
          stickerUri: stickerPath,
        );
        final updatedTexts = List<Draw>.from(state.texts)..add(newSticker);
        emit(state.copyWith(texts: updatedTexts, enableEditing: false));
        break;
      case EditMemeEventUndo():
        if (state.texts.isEmpty) break;
        final updatedCache = List<Draw>.from(state.cache)
          ..add(state.texts.last);
        final updatedTexts = List<Draw>.from(state.texts)..removeLast();
        emit(
          state.copyWith(
            texts: updatedTexts,
            cache: updatedCache,
            enableEditing: false,
          ),
        );
        break;
      case EditMemeEventRedo():
        if (state.cache.isEmpty) break;
        final updatedTexts = List<Draw>.from(state.texts)
          ..add(state.cache.last);
        final updatedCache = List<Draw>.from(state.cache)..removeLast();
        emit(
          state.copyWith(
            texts: updatedTexts,
            cache: updatedCache,
            enableEditing: false,
          ),
        );
        break;
      case EditMemeEventExport(repaintKey: GlobalKey repaintKey):
        final imageBytes = await CommonUtils.convertImageFile(
          repaintKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary,
        );
        await CommonUtils.saveImageToGallery(imageBytes);
        break;
      case EditMemeEventShare(repaintKey: GlobalKey repaintKey):
        final imageBytes = await CommonUtils.convertImageFile(
          repaintKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary,
        );
        await CommonUtils.shareFile(imageBytes);
        break;
      case EditMemeEventDraggingText(position: Offset position, id: String id):
        final updatedTexts =
            state.texts.map((text) {
              if (text.id == id) {
                return text.copyWith(offset: position);
              }
              return text;
            }).toList();
        emit(state.copyWith(texts: updatedTexts, enableEditing: false));
        break;
      case EditMemeEventToggleEditing():
        emit(state.copyWith(enableEditing: !state.enableEditing));
        break;
    }
  }
}
