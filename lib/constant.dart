import 'package:flutter/material.dart';


Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

bool validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length < 7) {
    return false;
  } else {
    return true;
  }
}

bool validatePassword(String value) {
  if (value.length < 6) {
    return false;
  } else {
    return true;
  }
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

bool validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return false;
  } else {
    return true;
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension ContextExtension on BuildContext {
  bool get isTablet => MediaQuery.of(this).size.shortestSide >= 600;

  bool get isPhone => MediaQuery.of(this).size.shortestSide < 600;

  bool get isWatch => MediaQuery.of(this).size.shortestSide < 350;
}
