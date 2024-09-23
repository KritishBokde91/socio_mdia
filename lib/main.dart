import 'package:flutter/material.dart';
import 'package:socio_mdia/screens/controllerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socio Mdia',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Editorial',
      ),
      debugShowCheckedModeBanner: false,
      home: const Controllerscreen(),
    );
  }
}