import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/shared/color_app.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: AppColor.bodyColorDark,
  scaffoldBackgroundColor: AppColor.bodyColorDark,
  hintColor: AppColor.textColor,
  primaryColorLight: AppColor.buttonBackgroundColorDark,
  textTheme: const TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
  buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary, buttonColor: Colors.white),
);
