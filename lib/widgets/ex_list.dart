import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_tile.dart';

class ExList extends StatelessWidget {
  final List<String> exerciseData = [
    'plank',
    'press-ups',
    'reverse wrist curls'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExTile(exerciseName: exerciseData[index]);
      },
      itemCount: exerciseData.length,
    );
    // return ExTile();
  }
}
