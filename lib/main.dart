import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const HouseCallApp());
}

class HouseCallApp extends StatelessWidget {
  const HouseCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
