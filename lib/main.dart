import 'package:flutter/material.dart';
import 'package:widggets_app/config/theme/app_theme.dart';
import 'package:widggets_app/presentation/screens/home/botones_app/buttons_screen.dart';
import 'package:widggets_app/presentation/screens/home/cards/cards_screen.dart';
import 'package:widggets_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
