import 'package:flutter/material.dart';
import 'package:quolo/nav_management.dart';
import 'package:quolo/pages/settings.dart';
import 'package:quolo/pages/quizz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quolo',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const NavManagement(),
        'settings': (context) => const SettingsPage(),
        '/html_beginner_test': (context) => const QuizzScreen(),
      },
    );
  }
}