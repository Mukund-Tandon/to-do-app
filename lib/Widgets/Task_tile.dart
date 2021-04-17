import 'package:flutter/material.dart';
import 'package:todoey/Models/Task.dart';
class Task_tile extends StatelessWidget {

final bool ischecked;
final String task_tile_task;
final Function toggle_task;
final Function longpress_callback;
Task_tile({this.ischecked,this.task_tile_task,this.toggle_task,this.longpress_callback});
  //
  // void checkbox_new_state(bool checkbox_status){

  // }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpress_callback,
        title: Text(task_tile_task,style: TextStyle(decoration: ischecked ? TextDecoration.lineThrough:null),),
        trailing: Taskcheckbox(checkbox_status: ischecked,
          toggle_checkbox: toggle_task,
    )
    );
  }
}

class Taskcheckbox extends StatelessWidget {
 final bool checkbox_status;
 final Function toggle_checkbox;
 Taskcheckbox({this.checkbox_status,this.toggle_checkbox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkbox_status,
      onChanged: toggle_checkbox,
    );
  }
}
