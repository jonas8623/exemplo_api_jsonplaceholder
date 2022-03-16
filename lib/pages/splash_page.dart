import 'package:exemplo_projeto_login/services/services.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    // Verificação se estiver logado vai para home se não vai para o login
    Future.wait([
      PreferencesService.isAuth(),
      Future.delayed(const Duration(seconds: 2))
    ]).then((value) => value[0]
          ? Navigator.of(context).pushReplacementNamed('/home')
          : Navigator.of(context).pushReplacementNamed('/login')
    );

    // Future.delayed(const Duration(seconds: 2)).then((_) =>
    //   Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600,
      child: const Center(child: CircularProgressIndicator(color: Colors.white70,)),
    );
  }
}
