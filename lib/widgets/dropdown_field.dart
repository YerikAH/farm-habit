import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:dropdown_button2/src/dropdown_button2.dart';

class DropDownField extends StatelessWidget {
   
  const DropDownField({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final pathIcons = [
      {
        "name":"mental",
        "path": "assets/icons/mind.png"
      },
      {
        "name":"artistico",
        "path": "assets/icons/artistic.png"
      },
      {
        "name":"ocupacional",
        "path": "assets/icons/work.png"
      },
      {
        "name":"fisico",
        "path": "assets/icons/body.png"
      },
      {
        "name":"nulo",
        "path": "assets/icons/null.png"
      },
      {
        "name":"descanso",
        "path": "assets/icons/rest.png"
      },
    ];
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        barrierDismissible: true,
        buttonStyleData: ButtonStyleData(
          height: 35.0,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.0,
            strokeAlign: StrokeAlign.center,
            color: AppTheme.black10,
            style: BorderStyle.solid
          )
         )
        ),
        dropdownStyleData: DropdownStyleData(
          elevation: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppTheme.whiteSky,
          )
        ),
        isDense: true,
        isExpanded: false,
        underline: Container(),
        value: "nulo",
        items: pathIcons.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value["name"],
            child:  Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(value["path"]!), fit: BoxFit.cover)
              ),
            )
          );
        }).toList(),
        onChanged: (value){}
      ),
    );
  }
}