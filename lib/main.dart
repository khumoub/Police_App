echo 'import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PoliceApp());
}

class PoliceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Police App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}' > .\lib\main.dart
