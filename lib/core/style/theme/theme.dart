import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';

ThemeData get theme => _theme;

ThemeData _theme = ThemeData(
  scaffoldBackgroundColor: offWhite,
  appBarTheme: _appBarTheme,
  fontFamily: 'Ubuntu',
);

AppBarTheme _appBarTheme = const AppBarTheme(
  backgroundColor: Colors.transparent,
  shadowColor: Colors.transparent,
  titleTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
);
