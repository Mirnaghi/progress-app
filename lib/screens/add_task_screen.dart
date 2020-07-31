import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {

  // create text editing controller object
  final myController = TextEditingController();

  // dispose when finish editing
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 50.0, right: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New task',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
              Center(
                child: TextField(
                  controller: myController,
                  onSubmitted: (String value) {},
                  decoration: InputDecoration(labelText: 'New task'),
                  autofocus: true,
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  width: 250.0,
                  child: RawMaterialButton(
                    onPressed: () {
                      Task newTask = Task(taskName: myController.text);
                      Provider.of<TasksList>(context, listen: false).addTask(newTask);
                      myController.clear();
                      Navigator.of(context).pop();
                      
                    },
                    child: Text('ADD TASK'),
                    fillColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ))
            ]),
      ),
     );
  }
}
