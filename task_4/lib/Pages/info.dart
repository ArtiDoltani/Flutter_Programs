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
   TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
   TextEditingController phoneController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  
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
          TextButton(onPressed: (){}, child: Text("Edit" ,style: TextStyle(color: Colors.white), ),
          )
           ],
            )
          
          ),
      body: Container(
        child: Column(
          children: [

        ]),),
          )
    );
  }
}