import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/workout_controller.dart';
import 'workout_detail_screen.dart';

class WorkoutSelectionScreen extends StatelessWidget {
  final WorkoutController workoutController = Get.find();

  @override
  Widget build(BuildContext context) {
    final workouts = workoutController.workouts[workoutController.selectedWorkoutType.value] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text('Select Workout')),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                workouts[index].name,
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Get.to(WorkoutDetailScreen(workout: workouts[index]));
              },
            ),
          );
        },
      ),
    );
  }
}
