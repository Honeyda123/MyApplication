import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class ConditionsHelper {
  bool isEmailValid(String email) {
    final regex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return regex.hasMatch(email);
  }

  bool isAccessTokenValid({required expiresIn}) {
    DateTime currentTime = DateTime.now();
    DateTime expirationTime = currentTime.add(Duration(seconds: expiresIn));

    bool isTokenValid = expirationTime.isAfter(currentTime);

    return isTokenValid;
  }
}
