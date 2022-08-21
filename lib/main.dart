import 'package:flutter/material.dart';
import 'package:orazo_ui/screens/home.dart';
import 'package:orazo_ui/screens/test_animation.dart';

void main() {
  runApp(const OrazoUI());
}

class OrazoUI extends StatelessWidget {
  const OrazoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(),
    );
  }
}