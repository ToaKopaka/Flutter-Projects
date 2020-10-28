class NameItem {
  String _text;
  bool _isDone;

  NameItem(this._text) {
    _isDone = false;
  }

  bool get isDone => _isDone;

  toggleDone() {
    _isDone = !_isDone;
  }

  String get text => _text;
}
