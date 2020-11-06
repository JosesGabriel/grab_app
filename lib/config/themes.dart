import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildDefaultTextTheme(base.textTheme),
    primaryColor: Color(0xFF20C468),
    accentColor: Color(0xFF004e92),
  );
}

TextTheme _buildDefaultTextTheme(TextTheme base) {
  return base.copyWith(
    headline3: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 50,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 18,
    ),
  );
}
