import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ECodeGuideApp());
}

class ECodeGuideApp extends StatelessWidget {
  const ECodeGuideApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Code Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}