import 'package:flutter/material.dart';

class ExTile extends StatelessWidget {
  final String exerciseName;

  ExTile({this.exerciseName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              exerciseName,
              style: TextStyle(
                  color: Colors.teal[300],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal[50],
          // boxShadow: [
          //   BoxShadow(color: Colors.blueGrey[50], spreadRadius: 1),
          // ],
        ),
      ),
    );
  }
}
