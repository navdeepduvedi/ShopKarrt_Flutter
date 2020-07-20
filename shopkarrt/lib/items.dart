class items{
  final String name;
  bool isDone;

  items({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}