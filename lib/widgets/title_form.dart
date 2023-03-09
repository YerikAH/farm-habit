import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TitleForm extends StatelessWidget {
   String title;
  TitleForm({super.key, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontFamily: "Nunito Sans",
        fontWeight: FontWeight.w700,
        color: AppTheme.black100,
      ),
    );
  }
}