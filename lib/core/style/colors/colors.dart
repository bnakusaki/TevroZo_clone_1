import 'package:flutter/material.dart';

// Primary color.
Color get primaryColor => const Color.fromARGB(255, 98, 110, 232);

// Others.
// Off white
Color get offWhite => const Color.fromARGB(255, 247, 247, 249);

// Faint white
Color get faintWhite => Colors.white70;

// Super faint white
Color get faintWhite1 => Colors.white24;

// wiredgrey
Color get wiredGrey => const Color.fromARGB(255, 71, 71, 71);

// Pure white
Color get white => const Color.fromARGB(255, 255, 255, 255);

// Yellow
Color get yellow => const Color.fromARGB(255, 236, 166, 60);

// Blacks
Color get faintBlack => Colors.black54;

// Shadow with primaryColor.
BoxShadow shadowWithPrimaryColor(double dy, {Color? color}) => BoxShadow(
      color: color ?? const Color.fromARGB(255, 232, 232, 248),
      blurRadius: dy,
      spreadRadius: 0,
      offset: Offset(0, dy),
    );
