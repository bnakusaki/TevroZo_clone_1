import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';

class TextStyles {
// Headings.
  static TextStyle get heading0 => TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.5,
      );

  static TextStyle get heading1 => TextStyle(
        color: white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get heading2 => TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        height: 1.3,
      );

  static TextStyle get heading3 => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  /// Body Texts.
  static TextStyle get body0 => TextStyle(
        color: faintWhite,
        fontSize: 14,
        height: 1.5,
      );

  static TextStyle get body1 => TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );

  static TextStyle get body2 => TextStyle(
        color: white,
        fontSize: 13,
        fontWeight: FontWeight.w300,
        height: 1.3,
      );
  static TextStyle get body3 => TextStyle(
        color: white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
}
