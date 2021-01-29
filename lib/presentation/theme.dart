import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontFamily: 'Netherland Cracker',
        fontSize: 2.0,
        color: Color(0xff0e0e0e),
      ),
      bodyText1: base.bodyText1.copyWith(
        fontFamily: 'HK Grotesk',
        fontSize: 16.0,
        color: Color(0xff0e0e0e),
      ),
      bodyText2: base.bodyText2.copyWith(
        fontFamily: 'HK Grotesk',
        fontSize: 14.0,
        color: Color(0xff0e0e0e),
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xff4A94FE),
    iconTheme: IconThemeData(color: Colors.white, size: 20.0),
  );
}
