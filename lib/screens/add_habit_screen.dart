import 'package:flutter/material.dart';

class AddHabitScreen extends StatelessWidget {
   
  const AddHabitScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Center(
        child: Text('Add Habit Screen fdas', style: TextStyle(fontSize: 40.0, color: Colors.red),),
      ),
    );
  }
}