import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {

//  final String taskTitle;
//
//   bool isChecked = true;
//
//  TaskTile({this.isChecked, this.taskTitle });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(
        'This is a task',
        style: TextStyle(
         // decoration: TextDecoration.lineThrough
        ),
      ),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {

  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue){
        setState(() {
          isChecked = newValue;
        });
      }
    );
  }
}
