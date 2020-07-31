import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'task_tile.dart';
import '../models/task.dart';


class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: Provider.of<TasksList>(context).tasks[index].taskName,
            isChecked: Provider.of<TasksList>(context).tasks[index].isDone,
            changeTaskTileState: (checkBoxState) {
              setState((){
                // Task selectedTask = Provider.of<TasksList>(context).tasks[index];
                Provider.of<TasksList>(context, listen: false).toggleChecked(index);
              });
            },
            important: Provider.of<TasksList>(context).tasks[index].isImportant,
          );
        },
        itemCount: Provider.of<TasksList>(context).tasks.length,
    );
  }
}


