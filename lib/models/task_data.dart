import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buyBread'),
    Task(name: 'buy egg'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskName) {
    if (taskName == null) return;
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(int taskIndex) {
    _tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  void deleteTask(int taskIndex) {
    _tasks.removeAt(taskIndex);
    notifyListeners();
  }
}
