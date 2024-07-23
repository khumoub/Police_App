import 'package:flutter/material.dart';
import 'utils/logger.dart';
import 'screens/home_screen.dart';

void main() {
  LoggerUtils.init();
  runApp(const PoliceApp());
}

class PoliceApp extends StatelessWidget {
  const PoliceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Police App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
