import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
//                decoration: InputDecoration(
//                  hintText: 'Enter Task'
//                ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10
              ),
                onPressed: (){
                  // Add our task to the list

                },
                child: Text(
                'ADD',
                  style: TextStyle(
                    color: Colors.white
                  ),
            ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
