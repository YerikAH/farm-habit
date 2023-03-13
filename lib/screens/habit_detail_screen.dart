import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HabitDetailScreen extends StatelessWidget {
   
  const HabitDetailScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      highlightColor: Colors.transparent,
                      child: const Text(
                        "Volver",
                        style: TextStyle(
                          fontFamily: "Nunito Sans",
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.sky100
                        ),
                      ),
                    ),
                    const Text(
                      "Leer libros",
                      style: TextStyle(
                          fontFamily: "Nunito Sans",
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.black100
                        ),
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      onTap: () {
                        
                      },
                      child: const Text(
                        "Editar",
                        style: TextStyle(
                          fontFamily: "Nunito Sans",
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.sky100
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
         ),
      ),
    );
  }
}