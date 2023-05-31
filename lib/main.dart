import 'package:flutter/material.dart';
import 'package:to_do_app/responseve_design/Larg_Screen.dart';
import 'package:to_do_app/responseve_design/smale%20screen.dart';
import 'package:to_do_app/views/screens/All_Tasks_Screen.dart';
import 'package:to_do_app/views/screens/Completed_Tasks.dart';
import 'package:to_do_app/views/screens/Un_Completed_Tasks.dart';

void main() {
  runApp( MaterialApp(home: ResponsiveTest(),));
}

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();

}

// بنقدر نعمل كومنت لكل الكلاس لانه تم استبداله بالريسبونسف
class _MainScreenState extends State<MainScreen> {
  PageController pC=PageController();
  refresh(){
    setState((){});
  }
  int Pindex=0;

  @override
  Widget build(BuildContext context) {
    /*   هادا الشغل الاولي وتم استبداله بالresponsive */
   return 
     Scaffold(
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
   );
  }
}

//

class ResponsiveTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MediaQuery.of(context).size.width>500?
   Larg_Screen():Smale_Screen();
  }
}


