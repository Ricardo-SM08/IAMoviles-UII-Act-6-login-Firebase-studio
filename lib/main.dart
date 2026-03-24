import 'package:flutter/material.dart';
import 'mispantallas/bienvenidos.dart';
import 'mispantallas/login.dart';
import 'mispantallas/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // Estilo limpio como en el repo de backslash
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}