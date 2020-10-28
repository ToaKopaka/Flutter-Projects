import 'package:flutter/material.dart';
import 'widgets/NameEntryForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Nickname App"),
        ),
        body: Center(
          child: NameEntryForm(),
        ),
      ),
    );
  }
}
