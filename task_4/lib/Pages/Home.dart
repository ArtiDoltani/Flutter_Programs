import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<Container> mylist=[];
List<Color> containercolor=[Colors.red,Colors.blue,Colors.green,Colors.orange,Colors.pink];
int count=0; int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title: Row(children: [
  Icon(Icons.home),
 Text("Home") ,
 ElevatedButton(onPressed:(){setState(() {
  
  mylist.add(
    Container(width: 90,height: 60,
    color:containercolor[count] ,
    child: Text("Counter is $counter" ,style: TextStyle(color: Colors.black)),
  ))
  ;
if(count<containercolor.length-1){
   count++;
}
  else {
    count=0;
  }
   counter++;
 });
 }, 
 child: Icon(Icons.add))
],),

),
body:
 Container(
child:SingleChildScrollView(
child: Column(
  children:
   //[
    // Container(color: Colors.amberAccent,
    // height: 60,
    // width: 60,
    
    // )
 // ],
    mylist,
),
),
    )
    );
  }
}