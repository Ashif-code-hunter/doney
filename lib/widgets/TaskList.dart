import 'package:flutter/material.dart';
import 'package:doney/widgets/TaskTile.dart';
import 'package:doney/models/tasks.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "A"),
    Task(name: "B"),
    Task(name: "C"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].name,
        isChanged: tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          setState(
            () {
              tasks[index].toggleDone();
            },
          );
        },
      );
    });
  }
}
