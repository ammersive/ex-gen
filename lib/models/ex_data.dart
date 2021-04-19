import 'dart:collection'; // unmodifiable list view from here
import 'package:flutter/foundation.dart';
import 'dart:math';
import 'package:ex_gen/models/exercise.dart';

class ExData extends ChangeNotifier {
  List<Exercise> _exerciseData = [
    Exercise(name: 'press-ups'),
    Exercise(name: 'reverse wrist curls'),
    Exercise(name: 'scapular stability'),
    Exercise(name: 'infraspinatus ext rotation'),
    Exercise(name: 'supraspinatus lifts'),
  ];

  List<Exercise> exerciseSelection = [
    Exercise(name: 'plank'),
  ];

  // unmodifiable version of _exerciseData, for safer read access, maybe use later
  // UnmodifiableListView<Exercise> get exerciseData {
  //   return UnmodifiableListView(_exerciseData);
  // }

  void selectExercises() {
    // Random rnd = new Random();
    // exerciseSelection.add(_exerciseData[rnd.nextInt(_exerciseData.length)]);
    for (var i = 0; i < 3; i++) {
      randomExercise();
    } // TODO: fix so repeats not allowed
    notifyListeners();
  }

  void randomExercise() {
    Random rnd = new Random();
    return exerciseSelection
        .add(_exerciseData[rnd.nextInt(_exerciseData.length)]);
  }
}
