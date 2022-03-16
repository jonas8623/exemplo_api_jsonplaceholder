
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {

  static const String _key = 'key';

  static save(String user) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString(_key, jsonEncode({
      "user" : user,
      "isAuth" : true
    }));
  }

  static Future<bool> isAuth() async {
    final preferences = await SharedPreferences.getInstance();
    final jsonResult = preferences.getString(_key);

    if(jsonResult != null) {
      final mapUser = jsonDecode(jsonResult);
      return mapUser['isAuth'];
    }
    return false;
  }

  static logout() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.remove(_key);
  }

}