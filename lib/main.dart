import 'package:flutter/material.dart';

import '/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GGM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.brown, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
