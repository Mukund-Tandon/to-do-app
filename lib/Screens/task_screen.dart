import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/task_data.dart';
import 'package:todoey/Widgets/Task_List.dart';
import 'package:todoey/Widgets/bottomsheet.dart';
import 'package:todoey/Models/Task.dart';

class Taskscreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 10.0,
        child: Icon(Icons.add,
        color: Colors.white,
        size: 30.0,),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => SingleChildScrollView(
            
            child: modalbuilder(),
          ),shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),),backgroundColor: Color(0xff757575),
            isScrollControlled: true,

          );
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.0,top: 60.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                    size: 50.0,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 35.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 20.0,),
                Text('Todoey',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('${Provider.of<task_data>(context).task_length} Tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 2.5),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0)),
            ),
                child: Task_List(),
          ))
        ],
      ),
    );
  }
}



