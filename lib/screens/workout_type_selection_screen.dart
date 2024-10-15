import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/level_controller.dart';
import '../controllers/workout_controller.dart';
import 'workout_selection_screen.dart';

class WorkoutTypeSelectionScreen extends StatelessWidget {
  final LevelController levelController = Get.find();
  final WorkoutController workoutController = Get.put(WorkoutController());

  @override
  Widget build(BuildContext context) {
    // Get the Beginner level's workout types
    final beginnerLevel = levelController.levels.firstWhere((l) => l.name == 'Beginner');

    return Scaffold(
      appBar: AppBar(title: Text('Select Workout Type')),
      body: ListView.builder(
        itemCount: beginnerLevel.workoutTypes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                beginnerLevel.workoutTypes[index],
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                workoutController.selectedWorkoutType.value = beginnerLevel.workoutTypes[index];
                Get.to(WorkoutSelectionScreen());
              },
            ),
          );
        },
      ),
    );
  }
}
