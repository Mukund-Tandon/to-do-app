import 'package:flutter/material.dart';
import 'package:todoey/Widgets/Task_tile.dart';
class Task_List extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Task_tile(),
        Task_tile()
      ],

    );
  }
}