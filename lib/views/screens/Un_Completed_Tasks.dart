import 'package:flutter/cupertino.dart';
import 'package:to_do_app/data_/data_source.dart';
import 'package:to_do_app/views/wedgets/Task_wedget.dart';

class Un_Completed_Tasks extends StatelessWidget{
  Function fun;
  Un_Completed_Tasks(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.where((element) => !element.iaComplet).length,
        itemBuilder: (context,index){
          return Task_Wedget(DataSource.tasks.where((element) => !element.iaComplet).toList()[index],fun);

        });
  }
}
