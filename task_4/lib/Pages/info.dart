import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Models/user.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  List<Info> User_Info_List=[];
   TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
   TextEditingController phoneController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  bool readOnly=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.black,
          title: Row(
            children: [
          Icon(Icons.menu),
          SizedBox(width: 20,) ,
          Text("INFORMATION"),
          TextButton(onPressed: (){
            setState(() {
              
              readOnly=false;
            });
          },child: Text("Edit" ,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
      
          )
           ],
            )
          
          ),
      body: Container(
         color: Colors.amber,
         padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar( 
                    backgroundImage: AssetImage('assets/Images/img_7.png'),
                    radius: 60,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    readOnly: readOnly,
                    controller: emailController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label:
                       Text("Email"),
                       icon: Icon(Icons.email), 
                       ),
                  ),
                   SizedBox(height: 20,),
                    TextField(
                      readOnly:readOnly,
                      obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label: Text("Password"),
                      icon:Icon(Icons.password)
                      )
                  ),
                  SizedBox(height: 20),
                   TextField(
                    readOnly:readOnly,
                  controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label: Text("Phone Number"),
                      icon:Icon(Icons.phone)
                      )
                  ),
                  SizedBox(height: 20),
                   TextField(
                     readOnly:readOnly,
                    maxLines: 4,
                    maxLength: 200,
                    controller: addressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label: Text("Address"),
                      icon:Icon(Icons.location_city)
                      )
                  ),
                  SizedBox(height: 40),
                ElevatedButton(
                    onPressed: (){//readOnly=true;
                      setState(() {
                        readOnly=true;
                      String  email= emailController.text;
                      String  password= passwordController.text;
                      String phone=phoneController.text;
                      String address= addressController.text;
                      User_Info_List.add(
                      Info(email: email,password: password,phone:phone,address:address),
                  );
                 // emailController.clear();
                 // passwordController.clear();
                      });
                  },
                   child: Text("SUBMIT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  )
        ]),),
          )
    );
  }
}