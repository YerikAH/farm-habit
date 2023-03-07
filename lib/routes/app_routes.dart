import 'package:farm_habit/screens/screens.dart';
import 'package:farm_habit/model/models.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',  name: 'Home Screen', screen: const HomeScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map <String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll(
        {option.route: (BuildContext context) => option.screen}
      ); 
    }
    return appRoutes;
  } 
  
  static  Route<dynamic> generateRouting( RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const NoFoundScreen()
      );
  }
}