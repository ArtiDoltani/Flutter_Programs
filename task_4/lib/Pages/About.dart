import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Pages/Descrption.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),title: Text("About Phone"),
        ),
        body: Container(
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
        ),
      ),
    );
  }
}
class myContainer extends StatelessWidget {
final  String name;
 final String value;
 final IconData icon;
  myContainer({required this.value,required this.name,required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          barrierDismissible: false,
          context: context,
           builder:( BuildContext context){
          return AlertDialog(
            title:Text("Information" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30), textAlign: TextAlign.center,),
           content:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Icon(icon),
            Text(name,style: TextStyle(fontSize: 20),),
            Text(value,style: TextStyle(fontSize: 20))
           ],
           )
            
           ,
            actions: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context )=>Description()
                  ));
              }, child: Text("OK")),
              TextButton(onPressed: (){
                 Navigator.pop(context);
              }, child: Text("Cancel"))
            ],
          );
        });
      },
      child: Container(
        child: Column(
          children: [
            Icon(icon),
            Text(name),
            Text(value)
          ],
        ),
      ),
    );
  }
}