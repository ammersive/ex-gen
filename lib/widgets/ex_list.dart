import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_tile.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';

class ExList extends StatelessWidget {
  @override
  //TODO use Consumer?
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var currentExercise =
            Provider.of<ExData>(context).exerciseSelection[index];
        return ExTile(
            exerciseName: currentExercise.name,
            isStruckThrough: currentExercise.isDone,
            exTileCallback: () {
              Provider.of<ExData>(context).updateExercise(currentExercise);
            });
      },
      itemCount: Provider.of<ExData>(context).exerciseSelection.length,
    ); // return ExTile();
  }
}
