import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:meme_editor_app/shared/common_utils.dart';
import 'package:meme_editor_app/shared/routes.dart';

import '../../application/edit_meme/edit_meme_bloc.dart';
import '../../domain/model/meme.dart';

class EditProvider extends StatelessWidget {
  final Meme meme;
  const EditProvider({super.key, required this.meme});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => EditMemeBloc(), child: Edit(meme: meme));
  }
}

class Edit extends StatelessWidget {
  final Meme meme;
  Edit({super.key, required this.meme});

  final GlobalKey repaintKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            RepaintBoundary(
              key: repaintKey,
              child: Stack(
                children: [
                  CachedNetworkImage(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    imageUrl: meme.url,
                    placeholder: (context, url) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorWidget: (context, url, error) {
                      return const Icon(Icons.error);
                    },
                  ),
                  const ShowingTexts(),
                ],
              ),
            ),
            BlocSelector<EditMemeBloc, EditMemeState, bool>(
              selector: (state) => state.enableEditing,
              builder: (context, enableEditing) {
                if (!enableEditing) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventToggleEditing(),
                                );
                                Logger().d(
                                  'Edit button pressed, current state: ${context.read<EditMemeBloc>().state.enableEditing}',
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.image),
                              onPressed: () async {
                                final value =
                                    await CommonUtils.pickImageFromGallery();
                                final position = Offset(100, 100);
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventAddSticker(
                                    position: position,
                                    stickerPath: value!.path,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                goRoute.pop(context);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.undo),
                              onPressed: () {
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventUndo(),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.redo),
                              onPressed: () {
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventRedo(),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventShare(repaintKey: repaintKey),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.save),
                              onPressed: () {
                                context.read<EditMemeBloc>().add(
                                  EditMemeEventExport(repaintKey: repaintKey),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return const TextFieldEnabled();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldEnabled extends StatelessWidget {
  const TextFieldEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.check_circle_outline),
              onPressed: () {
                final position = Offset(100, 100);
                context.read<EditMemeBloc>().add(
                  EditMemeEventSubmitText(position: position),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.highlight_remove_outlined),
              onPressed: () {
                context.read<EditMemeBloc>().state.textController.clear();
                context.read<EditMemeBloc>().add(EditMemeEventToggleEditing());
              },
            ),
          ],
        ),
        TextField(
          controller: context.read<EditMemeBloc>().state.textController,
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class ShowingTexts extends StatelessWidget {
  const ShowingTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditMemeBloc, EditMemeState>(
      builder: (context, state) {
        return Stack(
          children:
              state.texts
                  .mapWithIndex(
                    (draw, index) => Positioned(
                      left: draw.offset.dx,
                      top: draw.offset.dy,
                      child: Draggable(
                        data: draw,
                        feedback: Material(
                          color: Colors.transparent,
                          child:
                              draw.isSticker
                                  ? Image.file(File(draw.stickerUri!))
                                  : Text(
                                    draw.text!,
                                    style: TextStyle(color: Colors.black),
                                  ),
                        ),
                        child:
                            draw.isSticker
                                ? Image.file(File(draw.stickerUri!))
                                : Text(draw.text!),
                        onDragEnd: (details) {
                          final box = context.findRenderObject() as RenderBox;
                          final localOffset = box.globalToLocal(details.offset);
                          context.read<EditMemeBloc>().add(
                            EditMemeEventDraggingText(
                              position: localOffset,
                              id: draw.id,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                  .toList(),
        );
      },
    );
  }
}
