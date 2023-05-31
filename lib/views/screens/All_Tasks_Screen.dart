import 'package:flutter/cupertino.dart';
import 'package:to_do_app/data_/data_source.dart';
import 'package:to_do_app/views/wedgets/Task_wedget.dart';

class All_Tasks_Screen extends StatelessWidget{
  Function fun;
  All_Tasks_Screen(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context,index){
          return Task_Wedget(DataSource.tasks[index],fun);
        });
  }
}