import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SpanText extends StatelessWidget {
   String description;
  SpanText({super.key, required this.description});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: AppTheme.black70,
        fontSize: 10.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Nunito Sans"
      ),
    );
  }
}