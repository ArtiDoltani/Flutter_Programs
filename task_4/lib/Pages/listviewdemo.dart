import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Models/User_Model.dart';

class listviewdemo extends StatefulWidget {
  const listviewdemo({Key? key}) : super(key: key);

  @override
  State<listviewdemo> createState() => _listviewdemoState();
}

class _listviewdemoState extends State<listviewdemo> {
  @override
  List<Container> containerList=[];
  List<User> myUserList=[
   User(userName: "John",email: "John@gmail.com" ,gender: "Male" ),
   User(userName: "nike",email: "nike@gmail.com" ,gender: "Male" ),
   User(userName: "saima",email: "saima@gmail.com" ,gender: "Female" ),
   User(userName: "nikhil",email: "nikhil@gmail.com" ,gender: "Male" ),
   User(userName: "jack",email: "jack@gmail.com" ,gender:"Male" )
];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: ListView(
          children: myMethod(),
         ),
         )
    );
  }
  List<Container> myMethod(){
     for(int i=1;i<=myUserList.length;i++){
        containerList.add(
         Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 40,right: 40,bottom: 30,top: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.blue,
           borderRadius: BorderRadius.circular(10),
         border: Border.all(color: Colors.pink,width: 5.0,style: BorderStyle.solid
          ),
          ),
         child: Row(
          children: [
            CircleAvatar(
              backgroundColor:Colors.white,
              radius: 30,
              backgroundImage: AssetImage("assets/images/img_$i.png"),
            ),

         Text("Name:${myUserList[i-1].userName}\nEMAIL: ${myUserList[i-1].email}\nGENDER: ${myUserList[i-1].gender} "
           , style:TextStyle(color: Colors.black,fontSize: 20) )
          ],
         )
         )
         );
        }
         return containerList;
  }
}