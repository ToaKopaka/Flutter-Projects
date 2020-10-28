import "package:flutter/material.dart";
import 'package:toDoPractice/controllers/ListController.dart';
import 'NameTileList.dart';
import '../models/NameItem.dart';

class NameEntryForm extends StatefulWidget {
  @override
  _NameEntryFormState createState() => _NameEntryFormState();
}

class _NameEntryFormState extends State<NameEntryForm> {
  ListController controller = ListController();
  String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: NameTileList(controller),
          flex: 5,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  /*setState(() {
                    controller.addToDo(value);
                  });*/
                  name = value;
                },
              ),
            ),
          ),
          flex: 1,
        ),
        Container(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                controller.addToDo(name);
              });
            },
            child: Text('Add Name'),
          ),
        ),
      ],
    );
  }
}
