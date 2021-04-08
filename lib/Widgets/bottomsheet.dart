

import 'package:flutter/material.dart';
Widget modalbuilder(BuildContext context)
{
  return Container(

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.0,),
        Text('Add Task',
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w600,
          color: Colors.lightBlueAccent,
        ),),
        Container(
          margin: EdgeInsets.only(left: 50.0 ,right: 50.0 , top: 10.0),
          child: TextField(
            onChanged: null,
            style: TextStyle(fontSize: 20.0),
            cursorColor: Colors.lightBlueAccent,

            decoration: InputDecoration(enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.lightBlueAccent)),
            focusedBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2.0),),
            ),

          ),
        ),
        SizedBox(height: 20.0,),
        RawMaterialButton(onPressed: null,
          child: Container(
            height: 40.0,
            width: 100.0,
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),),
              ],
            ),
          ),
        )
        ],
    ),
  );
}