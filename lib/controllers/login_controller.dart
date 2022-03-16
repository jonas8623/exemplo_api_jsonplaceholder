import 'dart:developer';

import 'package:exemplo_projeto_login/services/services.dart';
import 'package:flutter/material.dart';

class LoginController {

 ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;


  setPassword(String value) => _password = value;
  String? _password;

  Future<bool> auth() async {
    inLoader.value = true;
    Future.delayed(const Duration(seconds: 5));
    log("Login: $_login, Password: $_password");
    inLoader.value = false;
     if(_login == 'admin' && _password == '123') {
       PreferencesService.save(_login!);
       return true;
     }
     return false;
  }

}