import 'package:flutter/material.dart';
import '../models/NameItem.dart';

class NameTile extends StatefulWidget {
  NameItem toDoItem;
  Function deleteCallback;

  NameTile(this.toDoItem, this.deleteCallback);

  @override
  _ToDoTileState createState() => _ToDoTileState();
}

class _ToDoTileState extends State<NameTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.toDoItem.text),
    );
  }
}
