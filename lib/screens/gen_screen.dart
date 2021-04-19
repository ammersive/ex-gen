import 'package:flutter/material.dart';
import 'package:ex_gen/widgets/ex_list.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';

class GenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Exercise Generator',
                style: TextStyle(
                    color: Colors.redAccent[400],
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
                child: ElevatedButton(
              child: Text("Generate!"),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent[400],
              ),
              onPressed: () {
                Provider.of<ExData>(context).selectExercises();
              },
            )),
            Expanded(child: ExList()),
          ],
        ),
      ),
    );

    // ExList());
  }
}
