import "package:flutter/material.dart";
import '../models/NameItem.dart';
import '../controllers/ListController.dart';
import 'NameTile.dart';

class NameTileList extends StatelessWidget {
  final ListController controller;

  NameTileList(this.controller);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(5),
      itemCount: controller.items.length,
      itemBuilder: (context, i) {
        return NameTile(controller.items[i], () {});
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
