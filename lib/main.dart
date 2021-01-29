import 'package:flutter/material.dart';
import 'package:pipl/presentation/theme.dart';
import 'package:pipl/screens/nav_screen.dart';

void main() {
  runApp(Pipl());
}

class Pipl extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipl',
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: basicTheme(),
      home: Nav(),
    );
  }
}
