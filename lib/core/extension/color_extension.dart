import 'package:flutter/material.dart';

extension HexColor on Color {
  /// hexカラーコードから色を抽出
  static Color fromHex(String? hexString) {
    // nullの場合はColors.greyに統一
    if (hexString == null) {
      return Colors.grey;
    }
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
