import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _currentTheme = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _currentTheme,
      home: HomePage(toggleTheme: _toggleTheme),
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}