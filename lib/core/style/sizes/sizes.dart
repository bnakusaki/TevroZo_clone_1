import 'package:flutter/material.dart';

// Returns the constraints of the screen in context.
class ScreenSize {
  // Width of screen in context.
  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Hight of screen in context.
  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

// Border Radii.
class BorderRadii {
  // TODO: factor with scale
  static Radius circular0() {
    return const Radius.circular(30.0);
  }

  static Radius circular1() {
    return const Radius.circular(20.0);
  }

  static BorderRadius get mediumRadius => BorderRadius.circular(20);
}

class AppPaddings {
  // TODO: factor with scale
  // For within containers.
  static double get inPadding => 20.0;

  // For containers in containers
  static double get inPadding1 => 10.0;
}

class Spacings {
  // TODO: factor with scale

  /// Horizontal spacings.
  /// Hor 0
  static SizedBox hor0 = const SizedBox(width: 20);

  /// hor 1
  static SizedBox hor1 = const SizedBox(width: 15);

  /// hor 2
  static SizedBox hor2 = const SizedBox(width: 10);

  /// Vertical spcacings
  /// Vert 0
  static SizedBox vert0 = const SizedBox(height: 30);

  /// Vert 1
  static SizedBox vert1 = const SizedBox(height: 10);

  /// Vert 2
  static SizedBox vert2 = const SizedBox(height: 40);

  /// Vert 3
  static SizedBox vert3 = const SizedBox(height: 5);
}
