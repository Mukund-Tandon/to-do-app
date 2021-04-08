import 'package:flutter/material.dart';
class Task_tile extends StatefulWidget {
  @override
  _Task_tileState createState() => _Task_tileState();
}

class _Task_tileState extends State<Task_tile> {
  bool ischecked = false;
  void checkbox_new_state(bool checkbox_status){
    setState(() {
      ischecked = checkbox_status;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('first task',style: TextStyle(decoration: ischecked ? TextDecoration.lineThrough:null),),
        trailing: Taskcheckbox(checkbox_status: ischecked,toggle_checkbox: checkbox_new_state,)
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
