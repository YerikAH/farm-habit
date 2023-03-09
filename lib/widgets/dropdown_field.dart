import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.black10, 
          strokeAlign: StrokeAlign.center, 
          style: BorderStyle.solid, 
          width: 1.0
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: DropdownButton(
        dropdownColor: AppTheme.whiteSky,
        isDense: true,
        isExpanded: false,
        underline: Container(),
        elevation: 8,
        borderRadius: BorderRadius.circular(15.0),
        value: "nulo",
        iconSize: 20.0,
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