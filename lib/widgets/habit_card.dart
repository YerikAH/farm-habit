import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
   
  const HabitCard({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(""))
                ),
              ),
              Column(
                children: const[
                  Text("Leer libros"),
                  Text("6:00 AM")
                ],
              ),
            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.alarm_rounded))
        ],
      ),
    );
  }
}