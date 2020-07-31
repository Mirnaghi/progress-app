import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final changeTaskTileState;
  final bool important;
  TaskTile({this.taskName, this.isChecked, this.changeTaskTileState, this.important});


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: changeTaskTileState,
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      secondary: important ? Icon(Icons.check_circle, color: Colors.red,) : null,
    );
  }
}
