import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';
// import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              name: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkCallback: (checkboxState) {
                taskData.updateTask(index);
              },
              onLongPress: () => taskData.deleteTask(index),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
