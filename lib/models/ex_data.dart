import 'dart:collection'; // unmodifiable list view from here
import 'package:flutter/foundation.dart';

class ExData extends ChangeNotifier {
  List<String> _exerciseData = [
    'plank',
    'press-ups',
    'reverse wrist curls',
  ];

  // unmodifiable version of _exerciseData, for safer read access
  UnmodifiableListView<String> get exerciseData {
    return UnmodifiableListView(_exerciseData);
  }
}
