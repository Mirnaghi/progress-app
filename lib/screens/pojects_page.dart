import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:progress/models/project.dart';
import 'package:progress/widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
        ),
        body: Container(
          width: 400,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.list, size: 40.0),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 320,
                    child: Expanded(
                      child: ListView(
                        children: <Widget>[
                          ProjectCard(
                              projectName:
                                  "Project Name One add new name expand aacvh",
                              percentage: 0.8),
                          ProjectCard(
                              projectName: "Project Name Two", percentage: 0.6),
                          ProjectCard(projectName: "Project ", percentage: 0.5),
                          ProjectCard(
                              projectName: "Project Name Four",
                              percentage: 0.7),
                          ProjectCard(
                              projectName: "Project Name One", percentage: 0.8),
                          ProjectCard(
                              projectName: "Project Name Two", percentage: 0.6),
                          ProjectCard(
                              projectName: "Project Name Three",
                              percentage: 0.5),
                          ProjectCard(
                              projectName: "Project Name Four",
                              percentage: 0.7),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
