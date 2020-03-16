import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {

  final String taskTitle;

   bool isChecked = false;

  TaskTile({this.isChecked, this.taskTitle });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(
        'This is a text',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
          value: isChecked,
          //onChanged: toggleCheckboxState
      ),
    );
  }
}
