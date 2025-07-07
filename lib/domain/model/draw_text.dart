import 'package:flutter/material.dart';

class Draw {
  final String id;
  Color color;
  String? text;
  Offset offset;

  final bool isSticker;
  final String? stickerUri;
  Draw({
    required this.color,
    required this.id,
    required this.text,
    required this.offset,
    this.isSticker = false,
    this.stickerUri,
  });

  Draw copyWith({
    String? id,
    Color? color,
    String? text,
    Offset? offset,
    bool? isSticker,
    String? stickerUri,
  }) {
    return Draw(
      id: id ?? this.id,
      color: color ?? this.color,
      text: text ?? this.text,
      offset: offset ?? this.offset,
      isSticker: isSticker ?? this.isSticker,
      stickerUri: stickerUri ?? this.stickerUri,
    );
  }
}
