import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/level_selection_screen.dart';

void main() {
  runApp(KickboxGuideApp());
}

class KickboxGuideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kickbox Guide',
      home: LevelSelectionScreen(),
    );
  }
}
