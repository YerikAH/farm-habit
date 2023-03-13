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
            margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      splashColor: Colors.transparent,
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
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 150.0
                      ),
                      child: const Text(
                        "Leer libros",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nunito Sans",
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.black100
                          ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
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
                ),
                const SizedBox(
                  height: 40.0,
                    width: double.infinity,
                    child: Divider(
                      color: AppTheme.black100,
                      thickness: 1,
                    ),
                  ),
              ],
            ),
          ),
         ),
      ),
    );
  }
}