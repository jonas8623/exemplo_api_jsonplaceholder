import 'package:exemplo_projeto_login/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/splash',
      routes: {
        '/splash' : (_) =>  const SplashPage(),
        '/login' : (_) =>  LoginPage(),
        '/home' : (_) => const HomePage(),
        '/details' : (_) => const DetailsPage(),
      }
    );
  }
}
