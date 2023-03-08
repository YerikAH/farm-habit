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
    for (var i = 0; i < 10; i++) {
      listShadows.add(
        const Shadow(
          color: AppTheme.black100,
          blurRadius: 150,
          offset: Offset(0, -5),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.whiteSky,
        elevation: 5,
        iconSize: 24.0,
        unselectedItemColor:AppTheme.black100,
        selectedLabelStyle: TextStyle(
          fontFamily: "Nunito Sans",
          fontWeight: FontWeight.w700,
          color:AppTheme.black100,
          shadows: listShadows,
        ),
        selectedItemColor: AppTheme.black100,
        unselectedFontSize: 14.0,
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