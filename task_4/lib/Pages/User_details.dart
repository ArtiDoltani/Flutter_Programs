import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Models/SignIn.dart';
import 'package:task_4/Pages/inputdemo.dart';
import 'package:task_4/Pages/listviewdemo.dart';
class User_Details extends StatefulWidget {
//User_Details(myMethod());
User_Details(this.signin);
final List<Signin> signin;
  @override
  State<User_Details> createState() => _User_DetailsState();
}

class _User_DetailsState extends State<User_Details> {

  // List<Container> userList=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar( 
          backgroundColor: Colors.black,
        title: Text("USERS"),
        leading: Icon(Icons.perm_device_information_sharp,
      )
      ),
      //In body ListView.builder at the run time will create users  we can also display users by last method 
       body:ListView.builder(itemBuilder: (BuildContext context,int  index) {
         return Container( 
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
            children: [

          Text("Email:  ${widget.signin[index].email}\nPassword: ${widget.signin[index].password} ", 
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

IconButton(onPressed: (){},
 icon: Icon(Icons.edit)
),
   IconButton(onPressed: (){
    setState(() {
     widget.signin.removeAt(index);
   });
   }, icon: Icon(Icons.cancel)
   )
   ],),
         );
       },
       itemCount: widget.signin.length
       )
       )
      // Container(
      //   child: ListView(
      //     children: myMethod(widget.signin)
      //     )
          );
      
      
    
  
  }

//  This is an other method of creating users
// List<Container> myMethod(List<Signin> signin){
//     List<Container> userList=[];
//      for(int i=0;i<signin.length;i++){
//        userList.add(
//          Container(
//           width: 100,
//           height: 100,
//           padding: EdgeInsets.all(10),
//           margin: EdgeInsets.only(left: 40,right: 40,bottom: 30,top: 10),
//           decoration: BoxDecoration
//           (shape: BoxShape.rectangle,
//            color: Colors.blue,
//            borderRadius: BorderRadius.circular(10),
//          border: Border.all(color: Colors.pink,width: 5.0,style: BorderStyle.solid
//           ),
//           ),
//          child: Row(
//           children: [
//          Text("EMAIL: ${signin[i].email}} "
//            , style:TextStyle(color: Colors.black,fontSize: 20) )
//           ],
//          )
//          )
//          );
//         }
//          return userList;
//   }

}