class Task {
  String taskName;
  bool isDone;
  bool isImportant;
  Task({this.taskName, this.isDone = false, this.isImportant = true});

  void toggleChecked(){
    isDone = !isDone;
  }
}