import 'package:exemplo_projeto_login/components/login_component.dart';
import 'package:exemplo_projeto_login/controllers/login_controller.dart';
import 'package:exemplo_projeto_login/widgtes/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 98),
            TextFieldWidget(
                onChanged: _loginController.setLogin,
                label: 'Login'
            ),
            TextFieldWidget(
              onChanged: _loginController.setPassword,
              label: 'Senha',
              obscureText: true
            ),
            const SizedBox(height: 20),
            LoginComponent(loginController: _loginController),
          ],
        ),
      ),
    );
  }
}
