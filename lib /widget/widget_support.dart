import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      color: Colors.black
    );
  }

  static TextStyle HeadlineTextFieldStyle() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: Colors.black
    );
  }

  static TextStyle LightTextFieldStyle() {
    return TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        color: Colors.black38
    );
  }

  static TextStyle semiBoolTextFieldStyle() {
    return TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
        color: Colors.black
    );
  }
}
