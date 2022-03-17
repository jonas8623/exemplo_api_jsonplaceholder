import 'package:exemplo_projeto_login/components/login_component.dart';
import 'package:exemplo_projeto_login/controllers/login_controller.dart';
import 'package:exemplo_projeto_login/widgtes/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _loginController = LoginController();

  Widget _image(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(maxHeight: 800),
      child: SafeArea(child: Image.asset('assets/jsonplaceholder.png', fit: BoxFit.cover,)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: ListView(
            children: [
              _image(context),
              Container(
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 28,),
                    TextFieldWidget(
                      onChanged: _loginController.setLogin,
                      label: 'Login'
                    ),
                    const SizedBox(height: 28,),
                    TextFieldWidget(
                      onChanged: _loginController.setPassword,
                      label: 'Senha',
                      obscureText: true
                    ),
                    const SizedBox(height: 20),
                    LoginComponent(loginController: _loginController),
                ])),
            ]
          )
        )
    );
  }
}
