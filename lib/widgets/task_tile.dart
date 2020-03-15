import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task', style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: TaskCheckbox(checkboxState: isChecked, togglecheckboxState: (bool currentCheckBoxState){
        setState(() {
          isChecked = currentCheckBoxState;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final Function togglecheckboxState;

  TaskCheckbox({this.checkboxState, this.togglecheckboxState});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Checkbox(
        value: checkboxState,
        onChanged: togglecheckboxState
    );
  }
}
