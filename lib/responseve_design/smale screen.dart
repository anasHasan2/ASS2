import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/screens/All_Tasks_Screen.dart';
import '../views/screens/Completed_Tasks.dart';
import '../views/screens/Un_Completed_Tasks.dart';

class Smale_Screen extends StatefulWidget{
  @override
  State<Smale_Screen> createState() => _Smale_ScreenState();
}

class _Smale_ScreenState extends State<Smale_Screen> {
  PageController pC=PageController();

  refresh(){
    setState((){});
  }

  int Pindex=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(

        child: Column(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.all(5),
            accountName: Text('User Name',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            accountEmail: Text('User Email',),
            currentAccountPicture:CircleAvatar(child: Icon(Icons.person,color: Colors.black,size: 60,),
             radius:300,backgroundColor: Colors.orangeAccent,) ,),
          ListTile(
            hoverColor: Colors.cyanAccent,
            onTap: (){
              pC.jumpToPage(0);
              Navigator.of(context).pop();
            },
            title: Text("All"),
            subtitle: Text('All Tasks'),
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(

            hoverColor: Colors.cyanAccent,
            onTap: (){
              pC.jumpToPage(1);
              Navigator.of(context).pop();
            },
            title: Text("Completed"),
            subtitle: Text('Completed Tasks'),
            leading: Icon(Icons.done_outline),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            hoverColor: Colors.cyanAccent,
            onTap: (){
              pC.jumpToPage(2);
              Navigator.of(context).pop();
            },
            title: Text("Un completed"),
            subtitle: Text('Un Completed Tasks'),
            leading: Icon(Icons.cancel_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
          ),


      ],),),
      // بنقدر نستغني عنه
      bottomNavigationBar: BottomNavigationBar(onTap: (x){
        pC.jumpToPage(x);
        Pindex=x;
        setState(() {});
      }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "All Tasks"),
        BottomNavigationBarItem(icon: Icon(Icons.done_all),label: "Completed"),
        BottomNavigationBarItem(icon: Icon(Icons.cancel),label: "Un Completed")
      ],currentIndex: Pindex,),
      appBar: AppBar(title: Text('ToDo App'),),
      body: PageView(children: [
        All_Tasks_Screen(refresh),
        Completed_Tasks(refresh),
        Un_Completed_Tasks(refresh)
      ],controller: pC,),
    )
    ;
  }
}