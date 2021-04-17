import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/task_data.dart';
import 'package:todoey/Widgets/Task_tile.dart';
import 'package:todoey/Models/Task.dart';
class Task_List extends StatefulWidget {

  @override
  _Task_ListState createState() => _Task_ListState();
}

class _Task_ListState extends State<Task_List> {


  @override
  Widget build(BuildContext context) {
    return Consumer<task_data>(
      builder: (context,taskdata,child){
        return ListView.builder(itemBuilder: (context,index){
          return Task_tile(
            task_tile_task: taskdata.task_list[index].task,
            ischecked: taskdata.task_list[index].is_done,
            toggle_task: (bool checkbox_status){
              taskdata.update_task_tile(taskdata.task_list[index]);
            },
            longpress_callback: () {
              taskdata.delete_task(taskdata.task_list[index]);
            },
          );
        },
          itemCount:taskdata.task_list.length,
        );
      },
    );
  }
}