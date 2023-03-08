import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_theme.dart';

class NoHabitWidget extends StatelessWidget {
   
  const NoHabitWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            SvgPicture.asset("assets/plant.svg"),
            const Text(
              "Cultiva un nuevo hábito",
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontWeight: FontWeight.w600,
                color:AppTheme.black100,
                fontSize: 16.0
              ),
            ),
            const Text(
              "Cada hábito que cultivas es una semilla que plantas para tu futuro. ¡Cultiva uno nuevo hoy y cosecha grandes recompensas mañana!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontWeight: FontWeight.w400,
                color:AppTheme.black70,
                fontSize: 14.0
              ),
            ),
          ],
        ),
    );
  }
}