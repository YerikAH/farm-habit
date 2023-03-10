import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonWeek extends StatelessWidget {
   
  const ButtonWeek({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final buttonsListData = ["Lun","Mar","Mie","Jue","Vie","Sab","Dom"];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttonsListData.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: ElevatedButton(
              style:  ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito Sans",
                ),
                foregroundColor:AppTheme.black50 ,
                backgroundColor: AppTheme.whiteSky,
                elevation: 0,
                shape: const CircleBorder(side: BorderSide(
                    color: AppTheme.black10, 
                    strokeAlign: StrokeAlign.center, 
                    style: BorderStyle.solid, 
                    width: 1.0
                  )
                ),
                minimumSize: const Size(40.0, 40.0),
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.red,
              ),
              onPressed: (){},
              child: Text(e)
            ),
          );
        }).toList(),
      ),
    );
  }
}