import 'package:http/http.dart' show get;
import 'dart:convert';
import 'dart:io';

import 'logger.dart';

class ImageCvt {
  static Future<String> convertImageToBase64(
      {required String imagePath}) async {
    List<int> imageBytes = await File(imagePath).readAsBytes();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  static Future<String?> networkImageToBase64(String imageUrl) async {
    try {
      final response = await get(Uri.parse(imageUrl));

      final bytes = response.bodyBytes;
      return base64Encode(bytes);
    }
    catch (e) {
      logger.e(e);
      return null;
    }
  }
}
