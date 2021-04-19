import 'package:flutter/material.dart';

class ColorPalette {
  static final Color primaryDark = colorFromHex("#22346B");
  static final Color primaryDarkBorder = colorFromHex("#1E98CE");
  static final Color primaryDarkText = colorFromHex("#ffffff");

  static Color colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
