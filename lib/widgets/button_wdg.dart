import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class MyButtons {
  static Widget showMyButtons(
    BuildContext context,
    String label,
    Color txColor,
    Color bgColor,
    Function() function, {
    required bool outlined,
    required bool gradiented,
    Color? strokeColor,
    Widget? hasIcon,
    bool isLoading = false,
  }) {
    //--USING ELEVATED BUTTON v.1:
    //----------------------------------------------------------------
    // return ElevatedButton(
    //   onPressed: function,
    //   child: Text(label, style: myStyle(16, color: cBlack)),
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: outlined ? cTransparent : color,
    //     side: outlined ? BorderSide(width:2, color:color) : null,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //   ),
    // );

    //--USING ELEVATED BUTTON v.2:
    //----------------------------------------------------------------
    // return ElevatedButton(
    //   onPressed: function,
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.all(0.0),
    //     elevation: 5,
    //   ),
    //   child: Container(
    //     padding: EdgeInsets.all(10),
    //     constraints: BoxConstraints(minWidth: 88.0),
    //     decoration: BoxDecoration(
    //         color: outlined ? cTransparent : color,
    //         gradient: gradiented ? kGradientPrim : null,
    //         borderRadius: BorderRadius.all(Radius.circular(10)),
    //         border: outlined ? Border.all(color: color, width: 2) : null),
    //     child: Text(label, style: myStyle(16, color: cBlack)),
    //   ),
    // );

    //--USING MATERIAL BUTTON (will take all Width):
    //----------------------------------------------------------------
    return MaterialButton(
      onPressed: function,
      hoverColor: cTransparent,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: 10, horizontal: kDefaultPadding * 0.5),
        decoration: BoxDecoration(
            color: outlined ? cTransparent : bgColor,
            gradient: gradiented ? cGradientPrim : null,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border:
                outlined ? Border.all(color: strokeColor!, width: 2) : null),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(color: cPrimer)),
                  SizedBox(width: 10),
                  Text(label, style: myStyle(color: txColor)),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  hasIcon == null
                      ? SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: hasIcon,
                        ),
                  Text(label, style: myStyle(fSize: 18, color: txColor))
                ],
              ),
      ),
    );
  }

  static Widget primary(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cWhite, cPrimer, function,
        outlined: false, gradiented: false);
  }

  static Widget secondary(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cSecond, cSecond, function,
        outlined: false, gradiented: false);
  }

  static Widget warning(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cBlack, cBSWarning, function,
        outlined: false, gradiented: false);
  }

  static Widget danger(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cWhite, cRed, function,
        outlined: false, gradiented: false);
  }

  static Widget disabled(BuildContext context, String label) {
    return showMyButtons(context, label, cWhite, cGrey, () {},
        outlined: false, gradiented: false);
  }

  static Widget primaryOutlined(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cBlack, cPrimer, function,
        outlined: true, gradiented: false, strokeColor: cPrimer);
  }

  static Widget secondaryOutlined(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cSecond, cSecond, function,
        outlined: true, gradiented: false, strokeColor: cPrimer);
  }

  static Widget dangerOutlined(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cRed, cRed, function,
        outlined: true, gradiented: false, strokeColor: cPrimer);
  }

  static Widget primaryGradiented(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, cBlack, cPrimer, function,
        outlined: false, gradiented: true);
  }

  static Widget isLoading(BuildContext context, String label) {
    return showMyButtons(context, label, cWhite, cGrey, () {},
        outlined: false, gradiented: false, isLoading: true);
  }

  static Widget primaryIconned(
      BuildContext context, String label, Widget icon, Function() function) {
    return showMyButtons(context, label, cBlack, cPrimer, function,
        outlined: false, gradiented: false, hasIcon: icon);
  }
}
