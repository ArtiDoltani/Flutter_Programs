import 'dart:js';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:task_4/Models/SignIn.dart';
import 'package:task_4/Pages/User_details.dart';
class Inputdemo extends StatefulWidget {
  const Inputdemo({Key? key}) : super(key: key);

  @override
  State<Inputdemo> createState() => _InputdemoState();
}

class _InputdemoState extends State<Inputdemo> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
    List<Signin> signin=[];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.black,
          title: Text("Login " ,textAlign: TextAlign.center,),
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context ,MaterialPageRoute(
                builder: (BuildContext context) => User_Details(signin)
                ));
            },icon: Icon(Icons.list)
            )
          ],
          ),
          body: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(20),
              
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  CircleAvatar( 
                    backgroundImage: AssetImage('assets/Images/img_7.png'),
                    radius: 80,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label:
                       Text("Email"),
                       icon: Icon(Icons.email), 
                       ),
                  ),
                   SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                      label: Text("Password"),
                      icon:Icon(Icons.password)
                      )
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                     String  email= emailController.text;
                      String  password= passwordController.text;
                      signin.add(
                      Signin(email: email,password: password),
                  );
                  emailController.clear();
                  passwordController.clear();
                      });
                  },
                   child: Text("SUBMIT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  )
                    ])
                    )
                ),
          );
          // floatingActionButton: FloatingActionButton(onPressed: (){
          //   String myText = nameController.text;
          //   outputController=nameController;
          //   print(myText);

          // },child: Text("Submit"),
          // ),
          
    
  }
  
}