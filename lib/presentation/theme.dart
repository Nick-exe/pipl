import 'package:flutter/material.dart';
import 'package:pipl/utils/constants.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
        fontFamily: 'Now Medium',
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: kMainBlack,
      ),
      headline2: base.headline2.copyWith(
        fontFamily: 'Now Medium',
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: kMainGrey,
      ),
      bodyText1: base.bodyText1.copyWith(
        fontFamily: 'HK Grotesk',
        fontSize: 16.0,
        color: kMainBlack,
      ),
      bodyText2: base.bodyText2.copyWith(
        fontFamily: 'HK Grotesk',
        fontSize: 14.0,
        color: kMainBlack,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xff4A94FE),
    iconTheme: IconThemeData(color: Color(0xff0e0e0e), size: 20.0),
  );
}
