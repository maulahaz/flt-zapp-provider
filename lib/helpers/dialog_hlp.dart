//--Build Dialog
// ========================================================================
import 'package:flutter/material.dart';

class DialogHelper {
//--Temporary Only -- to be deleted
// ========================================================================
  static void TemporaryOnly() {
    Center(
      child: CircularProgressIndicator(),
    );
    
//--Show Dialog
// ========================================================================
    // static void showErrorDialog(
    //     {String title = 'Error', String description = 'Something went wrong'}) {
    //   Get.defaultDialog(
    //     title: title,
    //     middleText: description,
    //     radius: 10,
    //     actions: [
    //       OutlinedButton.icon(
    //         style: OutlinedButton.styleFrom(
    //           side: BorderSide(color: Colors.red, width: 2),
    //         ),
    //         label: Text('OK', style: getFont(14, color: kBlack)),
    //         icon: Icon(Icons.cancel, color: kRed),
    //         onPressed: () => Get.back(),
    //       ),
    //     ],
    //   );
  }

//--Show Toast
//--Show Snackbar

//--Show Loading
// ========================================================================
  // static void showLoading({String message = 'Loading...'}) {
  //   Get.dialog(Dialog(
  //       child: Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Column(mainAxisSize: MainAxisSize.min, children: [
  //       CircularProgressIndicator(),
  //       Text(message),
  //     ]),
  //   )));
  // }
// ========================================================================
  // static void hideLoading() {
  //   if (Get.isDialogOpen == true) Get.back();
  // }
}
