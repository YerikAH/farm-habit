import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class GetHabitScreen extends StatelessWidget {
   
  const GetHabitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hoy",
                        style: TextStyle(
                          fontSize: 36.0, 
                          fontWeight: FontWeight.w800,
                          fontFamily: "Nunito Sans", 
                          color: AppTheme.black100
                        ),
                      ),
                      Text(
                        "14 de diciembre",
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.w400, 
                          fontFamily: "Nunito Sans", 
                          color: AppTheme.black70
                        ),
                      )
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: const MaterialStatePropertyAll<Color>(AppTheme.black10),
                      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0)
                      ),
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        )
                      )
                    ),
                    icon: const Icon(
                      Icons.bar_chart_rounded,
                      color: AppTheme.black100,
                      ), 
                    label: const Text(
                      "Habitos",
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.w600, 
                          fontFamily: "Nunito Sans", 
                          color: AppTheme.black100
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}