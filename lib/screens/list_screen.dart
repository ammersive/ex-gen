import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_list.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercise bank")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'My exercises',
                style: TextStyle(
                    color: Colors.redAccent[400],
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
                child: ElevatedButton(
              child: Text("Add"),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent[400],
              ),
              onPressed: () {
                Provider.of<ExData>(context).selectExercises();
              },
            )),
            Expanded(child: ExList(Provider.of<ExData>(context).exerciseData)),
          ],
        ),
      ),
    );
  }
}
