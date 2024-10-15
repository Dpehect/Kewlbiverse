import 'package:flutter/material.dart';
import '../models/workout.dart';

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  WorkoutDetailScreen({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(workout.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(workout.description),
      ),
    );
  }
}
