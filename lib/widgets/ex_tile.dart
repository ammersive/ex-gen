import 'package:flutter/material.dart';

class ExTile extends StatelessWidget {
  final String exerciseName;
  final bool isStruckThrough;
  final Function exTileCallback;

  ExTile({this.exerciseName, this.isStruckThrough, this.exTileCallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: exTileCallback,
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                exerciseName,
                style: TextStyle(
                    color: isStruckThrough ? Colors.grey[50] : Colors.teal[300],
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.teal[50],
          ),
        ),
      ),
    );
  }
}
