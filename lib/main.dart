import 'package:flutter/material.dart';
import 'package:progress/screens/pojects_page.dart';
// import 'package:progress/screens/project_detail.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProjectsPage(),);
  }
}


class TasksList extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskName: "implement add task"),
    Task(taskName: "create projects UI"),
    Task(taskName: "implement add project"),
    Task(taskName: "implement add project"),
    Task(taskName: "implement add project")
  ];

  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }

  void toggleChecked(int index){
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }

  void removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}

// ChangeNotifierProvider(
//       create: (_) => TasksList(),
//           child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: ProjectsPage(),//ProjectDetailPage(),
//       ),
//     )