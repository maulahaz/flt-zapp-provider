import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import 'x_widgets.dart';

class MyTextField {
  static Widget inputBox(
    // BuildContext context,
    String label, {
    required TextEditingController controller,
    bool obscureText = false,
    bool readOnly = false,
    Function(String value)? onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 60.0,
      color: cPrimer.withOpacity(0.2),
      child: TextFormField(
        readOnly: readOnly,
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  static Widget round2(
    String label, {
    required TextEditingController controller,
    bool obscureText = false,
    Function(String value)? onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 60.0,
      decoration:
          appBoxDecorationTextField(borderColor: cPrimer.withOpacity(0.4)),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 7, left: 10),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  static Widget round(
    // BuildContext context,
    String label, {
    double width = 280,
    double height = 50,
    String hintText = "Type in your info",
    required TextEditingController controller,
    bool obscureText = false,
    bool readOnly = false,
    Function(String value)? onChanged,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        onChanged: (value) => onChanged!(value),
        keyboardType: TextInputType.multiline,
        readOnly: readOnly,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 7, left: 10),
          hintText: hintText,
          border:
              const OutlineInputBorder(borderSide: BorderSide(color: cBlue)),
          //default border without any input
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: cTransparent)),
          //focused border is with input
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: cTransparent)),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: cTransparent)),
        ),
        maxLines: 1,
        autocorrect: false,
        obscureText: obscureText,
      ),
    );
  }

  static Widget roundDisable(
    String label, {
    required TextEditingController controller,
  }) {
    return round(
      label,
      controller: controller,
      readOnly: true,
    );
  }

  static Widget roundIcon(
    // BuildContext context,
    String label,
    String iconName, {
    required TextEditingController controller,
    Function(String value)? onChanged,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text14Normal(text: label),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 325,
            height: 50,
            decoration: appBoxDecorationTextField(),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Image.asset(iconName),
                ),
                round(
                  label,
                  controller: controller,
                  onChanged: onChanged,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget square(
    // BuildContext context,
    String label, {
    required TextEditingController controller,
    bool obscureText = false,
    Function(String value)? onChanged,
  }) {
    return inputBox(
      // context,
      label,
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
