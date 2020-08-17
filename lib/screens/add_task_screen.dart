import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:todo_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              onChanged: (text) {
                newTaskName = text;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: () {
                if (newTaskName != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskName);
                }
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
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
