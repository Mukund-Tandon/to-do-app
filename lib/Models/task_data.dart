import 'package:flutter/foundation.dart';
import 'package:todoey/Models/Task.dart';
import 'dart:collection';
class task_data extends ChangeNotifier{
  List<Task> _task_list = [
    Task(task: 'first task',),
    Task(task: 'second task'),
  ];
  UnmodifiableListView<Task> get task_list{
    return UnmodifiableListView(_task_list);
  }

  int get task_length{
    return _task_list.length;
  }
  void add_task(String text_entered){
    _task_list.add(Task(task: text_entered));
    notifyListeners();
  }
  void update_task_tile (Task task){
    task.toggle_done();
    notifyListeners();
  }
  void delete_task(Task task)
  {
    _task_list.remove(task);
    notifyListeners();
  }
}

