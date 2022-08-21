import 'package:flutter/material.dart';
import 'package:orazo_ui/screens/home.dart';

void main() {
  runApp(const OrazoUI());
}

class OrazoUI extends StatelessWidget {
  const OrazoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
