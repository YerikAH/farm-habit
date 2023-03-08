import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarSample extends StatelessWidget {
   String title;
   String buttonText;
  AppBarSample({super.key, required this.title, required this.buttonText});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const  TextStyle(
            fontFamily: "Nunito Sans",
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
            color: AppTheme.black100
          ),
          ),
        TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
            overlayColor:  MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          onPressed: (){}, 
          child: Text(buttonText,
          style: const  TextStyle(
            fontFamily: "Nunito Sans",
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: AppTheme.sky100
          ),
          )
          )
      ],
    );
  }
}