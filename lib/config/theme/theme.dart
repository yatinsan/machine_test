import 'package:flutter/material.dart';
import 'package:machine_test/config/constants/colors.dart';

var apptheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          primary: Ytcolors.primary,
          shape:
              const RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
  textTheme: TextTheme(
    displayMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
);
