import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:task_4/Models/User_Model.dart';
class gridTask extends StatefulWidget {
  const gridTask({Key? key}) : super(key: key);

  @override
  State<gridTask> createState() => _gridTaskState();
}

class _gridTaskState extends State<gridTask> {
List<Image> imagelist=[] ;
int count=1;
List<User> myUserList=[];
Widget? myLayout;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home:   Scaffold(
appBar: AppBar(
  leading: IconButton(icon: Icon(Icons.menu) ,
  onPressed:(){}),
title: Text('MyNewApp'),
 actions:[
  IconButton(onPressed: (){ 
    myLayout=myGridView();}, icon:Icon(Icons.grid_3x3) 
  ),
IconButton(onPressed: (){
  myLayout=myListView();

}, 
icon:Icon(Icons.list),
)
],
),
      
body:myLayout,
 
    floatingActionButton: FloatingActionButton(onPressed:() { 
      setState(() {
        imagelist.add(Image.asset('assets/Images/img_$count.png'));
         count< 6 ? count++ : count=1;
      }
    );
    }
    ,child:Icon(Icons.add)
    ),
    )
    );
    
    
    }
    
    Container myGridView(){
      return Container(
        child: GridView.count(
  crossAxisCount:4,
   children:  imagelist,
 
),

      );
    }
  Container myListView(){
      return Container(
        child: ListView(

   children:  imagelist,
        )
 
);
    }
    
}