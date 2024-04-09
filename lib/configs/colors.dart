import 'package:flutter/material.dart';


// Main Colors:
// --------------------------------------------------
const cRed = Color(0xFFE92E30);
const cBlue = Colors.blue;
const cGreen = Color(0xFF6AC259);
const cYellow = Colors.yellow;
const cGrey = Color(0xFFC1C1C1);
const cWhite = Color(0xFFFFFFFF);
const cBlack = Color(0xFF101010);
const cTransparent = Colors.transparent;

//--App Colors Pallets:
//--------------------------------------------------
const cPrimer = Color.fromARGB(255, 91, 62, 143);
const cSecond = Color.fromARGB(255, 243, 231, 206);
//primaryText
const cTx1 = cBlack;
//secondarText = Grey
const cTx2 = Color.fromARGB(255, 102, 102, 102);
//primaryBackground == Color Primary
Color cBg1 = Colors.grey.shade300;
//secondaryBackground = Grey
const cBg2 = Color.fromARGB(255, 247, 247, 249);
//primaryStroke = black
const cStroke1 = cBlack;
//Element = Other Color. primaryElement = blue
const cElement1 = Color.fromARGB(255, 61, 61, 216);


//--Bootstrap Color Standards: (Primary, Secondary,Success,Danger,Warnig,Info,Light,Dark)
//--Background Color:
const cBSPrimary = Color(0xFF007BFF);
const cBSSecondary = Color(0xFF6C757D);
const cBSSuccess = Color(0xFF28A745);
const cBSDanger = Color(0xFFDC3545);
const cBSWarning = Color(0xFFFFC107);
const cBSInfo = Color(0xFF17A2B8);
const cBSLight = Color(0xFFF8F9FA);
const cBSDark = Color(0xFF343A40);
const cBSDefault = Color(0xffe0e0e0);

//--Gradient:
const cGradientPrim = LinearGradient(
  // colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  colors: [cPrimer, cWhite, cPrimer],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const cGradientSec = LinearGradient(
  colors: [cPrimer, cWhite],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const cGradientBox = LinearGradient(
  colors: [cPrimer, Color.fromARGB(255, 177, 189, 197)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
