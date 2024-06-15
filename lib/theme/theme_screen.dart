
import 'package:flutter/material.dart';

ThemeData themedata() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      onPrimary: Color(0xffe92b05), // Define onPrimary color here
      secondary: Color(0xff1f1f1f),
      background: Colors.black,
    ),
  );
}