import 'dart:developer';
import 'package:exemplo_projeto_login/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginComponent extends StatelessWidget {

  final LoginController loginController;
  const LoginComponent({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? const CircularProgressIndicator()
            : ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if(states.contains(MaterialState.pressed)) return Colors.blueGrey;
                    return Colors.indigoAccent;
                }),
                elevation: MaterialStateProperty.all(4.4),
                padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                textStyle: MaterialStateProperty.all(
                    const TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                 ))),
              onPressed: () => _onPressed(context),
              child: const Text('Login')));
  }

  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Falha ao entrar'),
          elevation: 4.4,
          duration: Duration(seconds: 4),
        ));
  }

  _onPressed(BuildContext context) {
    loginController.auth().then((result) {
      if (result) {
        log('Success');
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        log('Failed');
        _showSnackBar(context);
      }
    });
  }
}
