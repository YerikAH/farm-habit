import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_theme.dart';

class NoHabitWidget extends StatelessWidget {
   
  const NoHabitWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    return Container(
        margin: EdgeInsets.only(top: height/5),
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            SvgPicture.asset("assets/plant.svg"),
            const SizedBox(height: 20.0),
            const Text(
              "Cultiva un nuevo hábito",
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontWeight: FontWeight.w700,
                color:AppTheme.black100,
                fontSize: 16.0
              ),
            ),
            const SizedBox(height:5.0),
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