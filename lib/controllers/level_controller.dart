import 'package:get/get.dart';
import '../models/level.dart';

class LevelController extends GetxController {
  var selectedLevel = ''.obs;

  final List<Level> levels = [
    Level('Beginner', ['Cardio', 'Strength']),
    Level('Intermediate', ['Cardio', 'Strength']),
    Level('Advanced', ['Cardio', 'Strength']),
  ];
}
