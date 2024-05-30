import 'package:flutter/material.dart';
import 'package:usound/screens/main_screem/main_screen.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
