import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {

  final String taskTitle;

  final Function checkboxCallback;

  final Function longPressCallbcack;

final  bool isChecked;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallbcack });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallbcack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),

    );
  }
}




