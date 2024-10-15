import 'package:get/get.dart';
import '../models/workout.dart';

class WorkoutController extends GetxController {
  var selectedWorkoutType = ''.obs;

  final Map<String, List<Workout>> workouts = {
    'Cardio': [
      Workout('Jump Rope', 'Jump rope for 10 minutes.'),
      Workout('Shadow Boxing', 'Shadow box for 5 rounds of 3 minutes.'),
      Workout('Burpees', 'Perform 3 sets of 10 burpees.'),
      Workout('High Knees', 'Run in place while lifting knees to your chest for 30 seconds.'),
    ],
    'Strength': [
      Workout('Push-ups', 'Perform 3 sets of 10 push-ups.'),
      Workout('Squats', 'Perform 3 sets of 15 squats.'),
      Workout('Lunges', 'Perform 3 sets of 10 lunges on each leg.'),
      Workout('Plank', 'Hold a plank for 30 seconds to 1 minute.'),
    ],
    // Add more workout types and workouts as needed
  };
}
