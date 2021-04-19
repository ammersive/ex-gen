import 'dart:collection'; // unmodifiable list view from here
import 'package:flutter/foundation.dart';
import 'package:ex_gen/models/exercise.dart';

class ExData extends ChangeNotifier {
  List<Exercise> _exerciseData = [
    Exercise(name: 'plank'),
    Exercise(name: 'press-ups'),
    Exercise(name: 'reverse wrist curls'),
  ];

  // unmodifiable version of _exerciseData, for safer read access
  UnmodifiableListView<Exercise> get exerciseData {
    return UnmodifiableListView(_exerciseData);
  }
}
