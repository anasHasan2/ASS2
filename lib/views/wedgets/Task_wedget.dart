import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/Task_.dart';

class Task_Wedget extends StatelessWidget{
  Task_ task_;
  Task_Wedget(this.task_,this.fun);
  Function fun;
  @override
  Widget build(BuildContext context) {

    return CheckboxListTile(value: task_.iaComplet,
      onChanged: (v){
      task_.iaComplet=!task_.iaComplet;
      fun();
      },title: Text(task_.name),);
  }
}