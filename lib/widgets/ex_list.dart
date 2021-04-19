import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_tile.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';

class ExList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExTile(
            exerciseName: Provider.of<ExData>(context).exerciseData[index]);
      },
      itemCount: Provider.of<ExData>(context).exerciseData.length,
    ); // return ExTile();
  }
}
