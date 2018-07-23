import 'package:flutter/material.dart';

part 'FirstScreen.dart';
part 'SecondScreen.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyFirstScreen(),
    );
  }
}
