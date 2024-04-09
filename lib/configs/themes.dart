import 'package:flutter/material.dart';

import 'x_configs.dart';

class Themes {
  static final light = ThemeData(
      colorScheme: ColorScheme.light(
        background: cBg1,
        // background: Color.fromRGBO(152, 233, 202, 1),
        primary: cWhite,
        secondary: cSecond,
        inversePrimary: cPrimer,
      ),
      primarySwatch: Colors.brown,
      brightness: Brightness.light,
      primaryIconTheme: IconThemeData(color: cWhite), //<- Ngrubah Warna Drawer
      fontFamily: 'Poppins', //'DancingScript', //'Nova', //
      appBarTheme: AppBarTheme(backgroundColor: cPrimer));

  static final dark = ThemeData(
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: cWhite,
      secondary: cSecond,
      inversePrimary: cPrimer,
    ),
    primaryColor: cGrey,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
  );
}

TextStyle get myLinkText {
  return TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    color: cYellow,
  );
}

TextStyle get myLinkText2 {
  return TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    color: cBlue,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.double,
  );
}
