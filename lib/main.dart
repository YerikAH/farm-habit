import 'package:farm_habit/routes/app_routes.dart';
import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm Habit',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute:AppRoutes.generateRouting,
      theme: AppTheme.themeConfig,
    );
  }
}
