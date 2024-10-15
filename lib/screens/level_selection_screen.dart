import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/level_controller.dart';
import 'workout_type_selection_screen.dart';

class LevelSelectionScreen extends StatelessWidget {
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Skill Level')),
      body: ListView.builder(
        itemCount: levelController.levels.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                levelController.levels[index].name,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                levelController.selectedLevel.value = levelController.levels[index].name;
                Get.to(WorkoutTypeSelectionScreen());
              },
            ),
          );
        },
      ),
    );
  }
}
