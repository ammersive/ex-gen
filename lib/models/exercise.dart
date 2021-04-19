class Exercise {
  bool isDone;
  final String name;

  Exercise({this.isDone = false, this.name});

  void toggleDone() {
    isDone = !isDone;
  }
}
