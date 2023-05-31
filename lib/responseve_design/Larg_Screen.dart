import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/screens/All_Tasks_Screen.dart';
import '../views/screens/Completed_Tasks.dart';
import '../views/screens/Un_Completed_Tasks.dart';

class Larg_Screen extends StatefulWidget{
  @override
  State<Larg_Screen> createState() => _Larg_ScreenState();
}

class _Larg_ScreenState extends State<Larg_Screen> {
  PageController pC = PageController();

  refresh() {
    setState(() {});
  }

  int Pindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('ToDo App'),),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white60,
              child: Column(children: [
                Row(
                    children: [ Expanded(child:
                    SizedBox(
                      child: UserAccountsDrawerHeader(
                        margin: EdgeInsets.all(5),
                        accountName: Text('User Name', style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),),
                        accountEmail: Text('User Email'),
                        currentAccountPicture: CircleAvatar(child: Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.white,
                        ), radius: 400, backgroundColor: Colors
                            .orangeAccent,)
                        ,),
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                    )
                      ,),
                    ]),
                Row(children: [
                  Expanded(child: ListTile(
                    hoverColor: Colors.cyanAccent,
                    onTap: () {
                      Pindex = 0;
                      refresh();
                    },
                    title: Text("All"),
                    subtitle: Text('Show All Tasks'),
                    leading: Icon(Icons.list),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  )
                ],),
                Row(children: [
                  Expanded(child: ListTile(
                    hoverColor: Colors.cyanAccent,
                    onTap: () {
                      Pindex = 1;
                      refresh();
                    },
                    title: Text("Completed"),
                    subtitle: Text('Completed Tasks'),
                    leading: Icon(Icons.done_outline),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  )
                ],),
                Row(children: [
                  Expanded(child: ListTile(
                    hoverColor: Colors.cyanAccent,
                    onTap: () {
                      Pindex = 2;
                      refresh();
                    },
                    title: Text("Un completed"),
                    subtitle: Text('Un Completed Tasks'),
                    leading: Icon(Icons.cancel_outlined),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  )
                ],),

              ],),
            ),
          ),
          Expanded(child:
          Pindex == 0
              ? All_Tasks_Screen(refresh)
              : Pindex == 1
              ? Completed_Tasks(refresh)
              : Un_Completed_Tasks(refresh)),

        ],
      ),
    )

    ;
  }

}
//
//   go_to_page(int x){
//     pC.jumpToPage(x);
//     Navigator.of(context).pop();
//   }
// }

