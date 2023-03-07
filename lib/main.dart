import 'package:farm_habit/screens/screens.dart';
import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm Habit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeConfig,
      home: const HomeScreen()
    );
  }
}
