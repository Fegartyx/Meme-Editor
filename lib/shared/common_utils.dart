import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

import 'model/common_failure.dart';

class CommonUtils {
  static String commonFailuresHandlerWidget(CommonFailure failures) {
    return switch (failures) {
      NoInternet() => 'No Internet Connection',
      ServerError(message: var message) => message ?? 'Server Error',
      Timeout() => 'Timeout',
      ParseError(message: var message) => message,
      ValueError(message: var message) => message,
      Other(message: var message) => message,
      CommonFailure() => 'Unknown Failure',
    };
  }

  static Future<File?> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  static Future<Uint8List> convertImageFile(
    RenderRepaintBoundary boundary,
  ) async {
    final permission = await Permission.photos.request(); // iOS
    final storage = await Permission.storage.request(); // Android < 13
    final media = await Permission.mediaLibrary.request(); // Android 13+

    if (!permission.isGranted && !storage.isGranted && !media.isGranted) {
      Logger().d("Permission denied");
      throw Exception("Permission denied");
    }

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();
    return pngBytes;
  }

  static Future<void> saveImageToGallery(Uint8List imageBytes) async {
    final result = await ImageGallerySaverPlus.saveImage(
      imageBytes,
      quality: 100,
      name: "meme_${DateTime.now().millisecondsSinceEpoch}",
    );

    Logger().i("Saved to gallery: $result");
  }

  static Future<void> shareFile(Uint8List fileBytes) async {
    final tempDir = await getTemporaryDirectory();
    final file = File(
      '${tempDir.path}/meme_share_${DateTime.now().millisecondsSinceEpoch}.png',
    );
    await file.writeAsBytes(fileBytes);

    try {
      final result = await SharePlus.instance.share(
        ShareParams(text: "Picture", files: [XFile(file.path)]),
      );

      if (result.status == ShareResultStatus.success) {
        Logger().i("File shared successfully");
      }
    } catch (e) {
      Logger().e("Error sharing file: $e");
      throw Exception("Error sharing file");
    }
  }
}
