// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Models/SignIn.dart';
import 'package:task_4/Pages/LoginPage.dart';
// ignore: unused_import
import 'package:task_4/Pages/inputdemo.dart';


class BottomNavigationTask extends StatefulWidget {
  const BottomNavigationTask({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTask> createState() => _BottomNavigationTaskState();
}

class _BottomNavigationTaskState extends State<BottomNavigationTask> {
  int currentState=0;
  // List<Widget> mybody=[
  //   Container(child: Text("Home",style: TextStyle(fontSize: 30),),),AboutNavigation(),
  //   Images()];
  Map<int ,Widget> mymap={
    0:HomeNavigation(),
    1 :AboutNavigation(),
    2 :Images(),
    
    //Tis will Produce error due to key string
    // "home":"Home",
    // "About" :AboutInNavigation(),
    // "Notification" : "Notification",
    // "Search":"Search"
  };
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
title: Text("Bottom Navigation"),
leading: Icon(Icons.menu),
actions: [
  // ignore: prefer_const_constructors
  IconButton(onPressed: (){}, icon: Icon(Icons.list))
],

        ),
        body:mymap[currentState],
        //mybody[currentState]
      
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentState=value;
            });
            
          },backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          currentIndex: currentState,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.lightBlue),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "About",backgroundColor: Colors.lightBlue),
    BottomNavigationBarItem(icon: Icon(Icons.image),label: "Images",backgroundColor: Colors.lightBlue),
          ],
        ),
    )
    );
  }
 
}
class AboutNavigation extends StatelessWidget {
  const AboutNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(padding: EdgeInsets.all(20),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQql5Hh8JOGmAYvv-q5hzGVzCXX1p5bhOCCmQ&usqp=CAU'),
               // AssetImage('assets/Images/img_8.jpg'),
                radius: 90,
            ),
            SizedBox(height: 30,),
            Text("Description"),
            SizedBox(height: 40,),
            Text("Hi, I am Arti Doltani Final year student,Studing Computer Systems Enginnering at Mehran UET, Jamshoro.\n"
                'Currently, I am learning flutter and want to polish my skills.'),
          ],
        ),
      ),
    );
  }
}
class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
//   List imagelist=['assets/Images/img_1.png','assets/Images/img_2.png','assets/Images/img_3.png','assets/Images/img_4.png','assets/Images/img_5.png','assets/Images/img_6.png'];
//  int count=0;
  @override
  Widget build(BuildContext context) {
    return  Container(
  
child: GridView.count(
  crossAxisCount:4,
   children:  //imagelist,
  [
    Image.asset('assets/Images/img_1.png'),
    Image.asset('assets/Images/img_2.png'),
    Image.asset('assets/Images/img_3.png'),
    Image.asset('assets/Images/img_4.png'),
    Image.asset('assets/Images/img_5.png'),
    Image.asset('assets/Images/img_6.png'),
    Image.asset('assets/Images/img_1.png'),
    Image.asset('assets/Images/img_2.png'),
  ]
 
),
);
  }
}
//====> Home Navigation 
class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  //LoginPage loginPage=new LoginPage();
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
child: FloatingActionButton(onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Inputdemo()
  )
  );
// Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()
//   )
//   );
// setState(() {
 
// });
},child: Icon(Icons.add),
),
    );
  }
}
// Moving to Login Page
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController emailController=TextEditingController();
//   TextEditingController passwordController=TextEditingController();
//     List<Signin> signin=[];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//               color: Colors.amber,
//               padding: EdgeInsets.all(20),
              
//           child:SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
                
//                 children: [
//                   CircleAvatar( 
//                     backgroundImage: AssetImage('assets/Images/img_7.png'),
//                     radius: 80,
//                   ),
//                   SizedBox(height: 20,),
//                   TextField( 
                    
//                     controller: emailController,
//                     decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
//                       label:
//                        Text("Email"),
//                        icon: Icon(Icons.email), 
//                        ),
//                   ),
//                    SizedBox(height: 20,),
//                     TextField(
//                       obscureText: true,
//                     controller: passwordController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
//                       label: Text("Password"),
//                       icon:Icon(Icons.password)
//                       )
//                   ),
//                   SizedBox(height: 40),
//                   ElevatedButton(
//                     onPressed: (){
//                       setState(() {
//                      String  email= emailController.text;
//                       String  password= passwordController.text;
//                       signin.add(
//                       Signin(email: email,password: password),
//                   );
//                   emailController.clear();
//                   passwordController.clear();
//                       });
//                   },
//                    child: Text("SUBMIT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                   )
//                     ])
//                     ));
//   }
// }