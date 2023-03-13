import 'package:farm_habit/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ItemHabit extends StatelessWidget {
   
  const ItemHabit({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: AppTheme.whiteSky,
        boxShadow: [
          BoxShadow(     
            blurRadius: 16.0,
            color: AppTheme.sky100.withOpacity(0.2),
            offset: Offset(0.0, 0.0)
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Row(
              
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/icons/mind.png"))
                  ),
                ),
                const SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Leer libros fdsafdsafdsafdsafdsafsadfdsafdsafd",
                      style: TextStyle(
                        fontFamily: "Nunito Sans",
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16.0,
                        color: AppTheme.black100,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      "6:00 AM",
                      style: TextStyle(
                        fontFamily: "Nunito Sans",
                        fontSize: 14.0,
                        color: AppTheme.black70,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: (){}, 
              color: AppTheme.black100,
              icon: const Icon(Icons.timer_outlined)
            )
        ],
      ),
    );
  }
}