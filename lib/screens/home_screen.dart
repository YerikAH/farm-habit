import 'package:farm_habit/screens/screens.dart';
import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SettingsScreen(),
    GetHabitScreen(),
    AddHabitScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Shadow> listShadows = [];
    for (var i = 0; i < 5; i++) {
      listShadows.add(
        Shadow(
          color: AppTheme.sky100.withOpacity(0.2),
          blurRadius: 100,
          offset: Offset(0, 0),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.whiteSky,
        elevation: 7,
        selectedLabelStyle: const TextStyle(
          fontFamily: "Nunito Sans",
          fontWeight: FontWeight.w700,
          color:AppTheme.sky100,
        ),
        selectedItemColor: AppTheme.sky100,
        selectedFontSize: 16.0,
        selectedIconTheme:  IconThemeData(
          size: 28.0, 
          shadows: listShadows
        ),
        unselectedFontSize: 14.0,
        iconSize: 20.0,
        unselectedItemColor:AppTheme.black100,
        unselectedLabelStyle: const TextStyle(
          fontFamily: "Nunito Sans",
          color: AppTheme.black100,
          fontWeight: FontWeight.w700,
        ),

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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}