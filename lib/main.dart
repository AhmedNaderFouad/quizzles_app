import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(QuizzlesApp());
}

class QuizzlesApp extends StatelessWidget {
  const QuizzlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzles',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Montserrat',
      ),
      home: WelcomeScreen(),
    );
  }
}
