import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_tile.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';
import 'package:ex_gen/models/exercise.dart';

class ExList extends StatelessWidget {
  final List<Exercise> listData;

  ExList(this.listData);

  @override
  //TODO use Consumer?
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var currentExercise = listData[index];
        return ExTile(
            exerciseName: currentExercise.name,
            isStruckThrough: currentExercise.isDone,
            exTileCallback: () {
              Provider.of<ExData>(context).updateExercise(currentExercise);
            });
      },
      itemCount: listData.length,
    ); // return ExTile();
  }
}
