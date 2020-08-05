import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:progress/widgets/test_pie_chart.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final double percentage;

  ProjectCard({this.projectName, this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 320,
            height: 140,
            decoration: BoxDecoration(
              border: Border.all(width: 6.0, color: Colors.black),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
              width: 150,
              height: 140,
              child: Center(
                child: Text(
                  projectName,
                  maxLines: 4,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
                CircularPercentIndicator(
            radius: 90.0,
            lineWidth: 10.0,
            percent: percentage,
            center: new Text("${percentage * 100}%", style: TextStyle(color: Colors.yellow, fontSize: 20.0)),
            progressColor: Colors.yellow,
            backgroundColor: Colors.white,
          ),
              ],
            )
          ),
          
        ],
      ),
    );
  }
}
