import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AddHabitScreen extends StatelessWidget {
   
  const AddHabitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBarSample(buttonText: "Cancelar",title: "Agregar habito",)
        ],
      )
    );
  }
}