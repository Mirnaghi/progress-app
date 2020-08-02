import 'package:flutter/material.dart';
import 'package:progress/models/task.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'task_tile.dart';
// import '../models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Task task = Provider.of<TasksList>(context).tasks[index];
        return Dismissible(
          key: Key(task.taskName),
          background: _dismissibleBackground(true),
          secondaryBackground: _dismissibleBackground(false),
          onDismissed: (direction) {
            setState(() {
              Provider.of<TasksList>(context, listen: false).removeTask(index);
            });
          },
          child: TaskTile(
            taskName: task.taskName,
            isChecked: task.isDone,
            changeTaskTileState: (checkBoxState) {
              setState(() {
                // Task selectedTask = Provider.of<TasksList>(context).tasks[index];
                Provider.of<TasksList>(context, listen: false)
                    .toggleChecked(index);
              });
            },
            important: task.isImportant,
          ),
        );
      },
      itemCount: Provider.of<TasksList>(context).tasks.length,
    );
  }
}



Widget _dismissibleBackground(bool left) {
  return Container(
    alignment: left ? Alignment.centerLeft : Alignment.centerRight,
    color: Colors.redAccent,
    child: Container(
      margin: left ? EdgeInsets.only(left: 8.0) : EdgeInsets.only(right: 8.0),
      child: Icon(
        Icons.delete,
        color: Colors.white,
      ),
    ),
  );
}
