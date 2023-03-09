import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;
  //TextEditingController controller;
  bool? isRequired;
  TextFieldWidget({
    super.key, 
    required this.hintText ,   
    // required this.controller,
    this.isRequired,
  });
  
  @override
  Widget build(BuildContext context) {

    BorderSide borderChange(Color color){
      return BorderSide(
        color: color, 
        width: 1, 
        strokeAlign: StrokeAlign.center, 
        style: BorderStyle.solid
      );
    }
    return TextFormField(
      // controller: controller,
      style: const TextStyle(
        color: AppTheme.black100,
        fontSize: 14.0,
        fontFamily: "Nunito Sans"
      ),
      decoration: InputDecoration(

        border: UnderlineInputBorder( 
          borderSide: borderChange(AppTheme.black10)
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppTheme.black50,
          fontSize: 14.0,
          fontFamily: "Nunito Sans"
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: borderChange(AppTheme.black10)
        ),
        enabledBorder: OutlineInputBorder(           
          borderRadius: BorderRadius.circular(16.0),
          borderSide: borderChange(AppTheme.black10)
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: borderChange(AppTheme.black10)
        ),
      ),
      validator: (String? value) {
        if (value != null && value.isEmpty && isRequired == true) {
          return "Obligatory field";
        }
        return null;
      },
    );
  }
}