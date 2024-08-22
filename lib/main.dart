import 'package:dart_mode/Theme/ThemeProvider.dart';
import 'package:dart_mode/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      // 2nd set in main app which theme we use set
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
