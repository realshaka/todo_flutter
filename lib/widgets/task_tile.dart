import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  TaskTile({
    this.isChecked,
    this.taskName,
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
