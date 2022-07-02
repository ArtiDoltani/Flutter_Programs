import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Pages/About.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentState=0;
  List<Widget> mybody=[
    Container(child: Text("Home",style: TextStyle(fontSize: 30),),),
    AboutInNavigation(),Container(child: Text("Notification",style: TextStyle(fontSize: 30),),),
    Container(child: Text("Search",style: TextStyle(fontSize: 30),),)];
  Map<int ,Widget> mymap={
    0:Container(child:Text("Home",style: TextStyle(fontSize: 30),)),
    1 : AboutInNavigation(),
    2 :Container(child: Text("Notification",style: TextStyle(fontSize: 30),),),
    3:Container(child: Text("Search",style: TextStyle(fontSize: 30),),)

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
  IconButton(onPressed: (){}, icon: Icon(Icons.list))
],

        ),
        body:mymap[currentState],
        //mybody[currentState]
       // mymap[currentState],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentState=value;
            });
            
          },
          selectedItemColor: Colors.black,
          currentIndex: currentState,
          items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.lightBlue),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person",backgroundColor: Colors.lightBlue),
    BottomNavigationBarItem(icon: Icon(Icons.notification_important_rounded),label: "Notifications",
    backgroundColor: Colors.lightBlue),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.lightBlue),
          ],
        ),
    )
    );
  }
 
}class AboutInNavigation extends StatefulWidget {
  const AboutInNavigation({Key? key}) : super(key: key);

  @override
  State<AboutInNavigation> createState() => _AboutInNavigationState();
}

class _AboutInNavigationState extends State<AboutInNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myContainer(icon:Icons.android_sharp,name: "Device name",value:"Real me"),
                myContainer(icon:Icons.phone_android,name: "Android",value:"Real me 3pro")
              ],
            ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                myContainer(icon:Icons.android_sharp,name: "Device name",value:"Baseband  and kernal"),
                myContainer(icon:Icons.android_rounded,name: "RAM",value:"4.00GB")
              ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                myContainer(icon:Icons.android_sharp,name: "realme UI version",value:"V1.0"),
                myContainer(icon:Icons.phone_android,name: "infnix",value:"Hot 10")
              ],),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                myContainer(icon:Icons.tablet_android,name: "Tablet ",value:"2.0"),
                myContainer(icon:Icons.apple,name: "iphone",value:"Apple")
              ],
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
               // myContainer(icon:Icons.android_sharp,name: "Device name",value:"Real me"),
               // myContainer(icon:Icons.android_sharp,name: "Device name",value:"Real me")
              ],
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                // myContainer(icon:Icons.android_sharp,name: "Device name",value:"Real me"),
                // myContainer(icon:Icons.android_sharp,name: "Device name",value:"Real me")
              ],
                  )
          ],
         )
        );
  }
}