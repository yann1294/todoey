import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {


  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}