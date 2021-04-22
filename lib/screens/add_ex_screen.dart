import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';

class AddExScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newExTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Text('Add exercise',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.deepOrange,
                  )),
              TextField(
                autofocus: true, // keyboard pops up automatically
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newExTitle = newText;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    // Provider.of<TaskData>(context).addTask(newTaskTitle);
                    Provider.of<ExData>(context).addExercise(newExTitle);
                    Navigator.pop(context);
                  },
                  child: Text("Add")),
            ],
          )),
    );
  }
}
