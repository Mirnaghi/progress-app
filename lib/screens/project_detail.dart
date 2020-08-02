import 'package:flutter/material.dart';
import 'package:progress/screens/add_task_screen.dart';
import 'package:progress/widgets/task_list.dart';
// import 'package:provider/provider.dart';


class ProjectDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => SingleChildScrollView(
                      child: Container(
                        height: 400,
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom) ,
                        child: Center(child: AddTaskScreen()),
                      ),
                    ),
                );
          },
          backgroundColor: Colors.redAccent,
          child: Icon(
            Icons.add,
            size: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child:
                        Icon(Icons.list, color: Colors.redAccent, size: 40.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Project name',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '10 tasks to do',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
