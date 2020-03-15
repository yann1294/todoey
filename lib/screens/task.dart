import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';

import 'addTaskscreen.dart';


class TasksScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext context) => AddTaskScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(
            Icons.add,
          ),
          onPressed: (){
            // 
            showModalBottomSheet(context: context, builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
                isScrollControlled: true);
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 95, left: 35, right: 35, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                        Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 35,
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text('12 tasks', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: TaksList(),
            ),
          )
        ],
      )
    );
  }
}




