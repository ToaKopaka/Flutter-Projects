import '../models/NameItem.dart';

class ListController {
  var _items = <NameItem>[];

  List<NameItem> get items => _items;

  addToDo(String text) {
    if (text != "") {
      var newItem = NameItem(text);
      _items.add(newItem);
    }
  }
}
