import 'package:flutter/material.dart';
import 'package:flutter_todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';


void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}



