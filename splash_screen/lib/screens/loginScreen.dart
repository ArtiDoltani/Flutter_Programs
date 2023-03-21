// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/screens/student.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller= TextEditingController();
    final passwordcontroller= TextEditingController();
    final  agecontroller=TextEditingController();
    var usertype=['Student','Admin','Teacher'];
    String selectedvalue='Student'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up'),
      centerTitle: true,
      automaticallyImplyLeading: false,),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailcontroller,
            decoration: InputDecoration(hintText: ('Email'),
             border: OutlineInputBorder(
             
                borderRadius: BorderRadius.circular(5),
              )
            )
            ,
          ),
        const  SizedBox(height: 20,),
          TextFormField(
            controller: passwordcontroller,
          decoration:  InputDecoration(
              hintText: ('password'),
              
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )

             
              ),
            
          ),
          const  SizedBox(height: 20,),
          TextFormField(
            controller: agecontroller,
            keyboardType: TextInputType.number,
          decoration:  InputDecoration(
              hintText: ('age'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )

             
              ),
            
          ),
          Container(
            width: 200,
            height: 70,
            child: DropdownButton(
              value:selectedvalue,
              isExpanded: true,
             items:usertype.map((String usertype){
               return DropdownMenuItem(
                    value: usertype,
                    child: Text(usertype),
                  );
             }
             ).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  selectedvalue=newvalue!;
                });
                },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
            child: InkWell(
              onTap: () async{
                 SharedPreferences sp=await SharedPreferences.getInstance();
                sp.setString('email', emailcontroller.text);
                sp.setString('age', agecontroller.text.toString());
                sp.setString('usertype', 'student');
                sp.setBool('islogin',true);
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Student_view(),)
                );
              },

              child: Container(
                width: double.infinity,
                height: 50,
            color: Color.fromARGB(255, 72, 136, 74),
                   child: Center(child: Text('Sign up'))
              ),
            ),
          )
      ]),
    );
    
  }
}