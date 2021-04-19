import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ex_gen/models/ex_data.dart';
import 'package:ex_gen/screens/gen_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ExData(),
      child: MaterialApp(
        home: GenScreen(),
      ),
    );
  }
}
