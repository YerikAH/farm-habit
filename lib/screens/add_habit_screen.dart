import 'package:farm_habit/theme/app_theme.dart';
import 'package:farm_habit/widgets/span_text.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AddHabitScreen extends StatelessWidget {
   
  const AddHabitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarSample(buttonText: "Cancelar",title: "Agregar habito",),
            const SizedBox(
              width: double.infinity,
              child: Divider(
                color: AppTheme.black100,
                thickness: 1,
              ),
            ),
            const SizedBox(height: 20.0,),
            TitleForm(title: "Nombre del habito",),
           const SizedBox(height: 10.0,),
            TextFieldWidget(hintText: "Ingresa el nombre del habito"),
            const SizedBox(height: 5.0,),
            SpanText(description: "Cuando elijas el nombre de tu hábito, asegúrate de que sea una acción clara en lugar de una lucha interna. Por ejemplo, en lugar de 'dejar de procrastinar', elige 'iniciar las tareas temprano'.") ,
            const SizedBox(height: 20.0,),
            TitleForm(title: "Icono del habito ",),
            const SizedBox(height: 10.0,),
            const DropDownField(),
            const SizedBox(height: 5.0,),
            SpanText(description: "Te recomendamos elegir un icono para tu hábito, de esta forma podrás filtrar y visualizar de manera más clara todos tus hábitos. ¡Anímate a personalizar tu lista de hábitos!"),
            const SizedBox(height: 20.0,),
            TitleForm(title: "Días que desarrollaras tus habitos",),
            const SizedBox(height: 10.0,),
            const ButtonWeek(),
            const SizedBox(height: 20.0,),
            TitleForm(title: "Tiempo de tu habitó"),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                SelectTime(maxNum: 120, defaultValue: '60', timeValue: 'min',),
                SizedBox(width: 20.0,),
                SelectTime(maxNum: 60, defaultValue: '30', timeValue: 'seg',)
              ],
            )
            
          ],
        )
      ),
    );
  }
}