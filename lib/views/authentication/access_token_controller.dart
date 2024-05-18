import 'dart:convert';
import 'package:firstproject/global/services/http_service.dart';
import 'package:firstproject/global/utils/conditions_helper.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccessTokenController {
  HttpService httpTourService = HttpService();

  Future<void> saveLoginResponseToLocal(
      Map<String, dynamic> jsonResponse) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonData = json.encode(jsonResponse);
    await prefs.setString('loginResponse', jsonData);
  }

  Future<void> clearLoginResponseFromLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('loginResponse');
  }

  Future<Map<String, dynamic>?> getLoginResponseFromLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('loginResponse');
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  Future<bool> checkAccessTokenValidity() async {
    Map<String, dynamic>? loginResponse = await getLoginResponseFromLocal();
    if (loginResponse != null) {
      String accessToken = loginResponse['access_token'];
      int expiresIn = loginResponse['expires_in'];

      DateTime currentTime = DateTime.now();
      DateTime expirationTime = currentTime.add(Duration(seconds: expiresIn));

      if (ConditionsHelper().isAccessTokenValid(expiresIn: expiresIn)) {
        // Access token is valid, do your further logic here
        print('Valid token');
        return true;
      } else {
        print('Invalid token');
        return false;
      }
    } else {
      // No login response found in local storage, do your handling here
      print('FALSE FROM LOCAL STORAGE');
      return false;
    }
  }

  Future<dynamic> getTokenFromLocal() async {
    Map<String, dynamic>? loginResponse = await getLoginResponseFromLocal();
    if (loginResponse != null) {
      String accessToken = loginResponse['access_token'];
      print('THIS IS THE TOKEN: $accessToken');

      return accessToken;
    } else {
      return false;
    }
  }
}
