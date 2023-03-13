import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
// ignore: implementation_imports
import 'package:dropdown_button2/src/dropdown_button2.dart';

class SelectTime extends StatelessWidget {
  final int maxNum;
  final String timeValue;
  final String defaultValue;
  const SelectTime({Key? key, required this.maxNum, required this.timeValue, required this.defaultValue}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<int> listNumber = [for(int i=0; i<=maxNum; i++) i ];
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
          maxHeight: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppTheme.whiteSky,
          )
        ),
        isDense: true,
        isExpanded: false,
        underline: Container(),
        value: defaultValue,
        items: listNumber.isEmpty ? [] : listNumber.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: "$value",
            child: Text("$value $timeValue",
              style: const TextStyle(
                fontFamily: "Nunito Sans",
                fontSize: 12.0,
                color: AppTheme.black100,
                fontWeight: FontWeight.w400
              ),
            )
          );
        }).toList(),
        onChanged: (value){}
      ),
    );
  }
}