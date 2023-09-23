import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/style/theme/theme.dart';
import 'dart:math' as math;

import 'package:tevorozo_project_1/screens/screen_1/presentation/widgets/screen/screen_1.dart';
import 'package:tevorozo_project_1/screens/screen_2/presentation/widgets/screen/screen2.dart';
import 'package:tevorozo_project_1/screens/screen_3/presentation/widgets/screen/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const Screen3(),
    );
  }
}
