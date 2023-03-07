import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.whiteSky,
        elevation: 2,
        iconSize: 26.0,
        unselectedItemColor:AppTheme.black100,
        selectedLabelStyle:const TextStyle(
          fontFamily: "Nunito Sans",
          fontWeight: FontWeight.w700
        ) ,
        unselectedFontSize: 14.0,
        unselectedLabelStyle: const TextStyle(
          fontFamily: "Nunito Sans",
          color: AppTheme.black100,
          fontWeight: FontWeight.w700
        ),
        fixedColor: AppTheme.sky100,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded, ),
            label: "Ajustes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded,),
            label: "Inicio"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_rounded,),
            label: "Agregar"
          ),
        ],
      ),
    );
  }
}