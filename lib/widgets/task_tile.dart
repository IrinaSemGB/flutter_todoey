import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function()? deleteTask;

  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
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
