import 'package:flutter/material.dart';

import '../configs/x_configs.dart';

//--Get Font Style Function:
// ========================================================================
TextStyle myStyle(
    {double? fSize, Color? color, bool isBold = false, String? fName}) {
  return new TextStyle(
    fontSize: fSize ?? 14,
    color: color ?? cBlack,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    fontFamily: fName,
  );
}

//--Get Font Style Function:
// ========================================================================
TextStyle getFont(double fontSize,
    {Color? color, bool isBold = false, String? fontName}) {
  return new TextStyle(
    fontSize: fontSize,
    color: color ?? cBlack,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    fontFamily: fontName,
  );
}

//--Build Loading Indicator
// ========================================================================
Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}
