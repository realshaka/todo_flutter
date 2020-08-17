import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy milk'),
    Task(name: 'buy powder'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int taskCount() {
    return _tasks.length;
  }

  void addTask(String newTaskName) {
    _tasks.add(Task(name: newTaskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
