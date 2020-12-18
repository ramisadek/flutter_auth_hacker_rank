import 'package:flutter/material.dart';
import 'package:flutter_auth_hacker_rank/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AUth hacker rank',
      home: WelcomeScreen(),
    );
  }
}
