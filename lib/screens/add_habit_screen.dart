import 'package:farm_habit/theme/app_theme.dart';
import 'package:farm_habit/widgets/span_text.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AddHabitScreen extends StatelessWidget {
   
  const AddHabitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
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
                  ),
                  const SizedBox(height: 20.0,),
                  SwitchListTile.adaptive(
                    activeColor: AppTheme.sky100,
                    inactiveThumbColor: AppTheme.black50,
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text(
                      "¿Te gustaría recibir una notificación?",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Nunito Sans",
                        fontWeight: FontWeight.w700,
                        color: AppTheme.black100,
                      ),
                    ),
                    
                    value: false, 
                    onChanged: ((value) {
                    
                    })
                  ),
                  const SizedBox(height: 5.0,),
                  SpanText(description: "¿Te gustaría que te recordemos sobre este hábito? Activa nuestras notificaciones y nunca lo olvidarás."),
                  const SizedBox(height: 20.0,),
                  TitleForm(title: "Selecciona la hora",),
                  const SizedBox(height: 10.0,),            
                  Row(
                    children: const [
                      SelectTime(maxNum: 24, defaultValue: '12', timeValue: 'hor',),
                      SizedBox(width: 20.0,),
                      SelectTime(maxNum: 60, defaultValue: '30', timeValue: 'min',),
                    ],
                  ),
                  const SizedBox(height: 100.0,),   
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.sky100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  onPressed: (){}, 
                  child: const Text(
                    "Agregar habito",
                    style: TextStyle(
                      fontFamily: "Nunito Sans",
                      fontSize: 14.0,
                      color: AppTheme.whiteSky,
                      fontWeight: FontWeight.w700
                    ),  
                  )
                )
              )
            ],
          )
        ),
      ),
    );
  }
}