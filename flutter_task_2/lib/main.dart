import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main() {
  runApp(MyApp());
}

// Here we ar creating Statefull widget in which we can change the properties
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mytext="Hello!";
  String fb="Facebook";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text(fb),leading:
         Icon(
          
         // "Flutter App",<==== use this when we use text widget
         // style: TextStyle(color: Colors.white),
          Icons.facebook,
            color: Colors.white,//using icon widget
      
          
          ),
 
         
          ),
          body: Container(
            color: Colors.red,
           child: Column(
             children: [
               Row(children: [
                 Text('Hi'),
                 SizedBox(height: 10,),
                 Column(
                   children: [
                      Text('Nike')],
                   ),
                  Column(
                    children: [ Text('Nike')],),
                  Column(
                    children: [ Text('Nike')],),
                  
               ],
               ),
               Row(children: [
                 Text('Hey'),
                 Column(children: [Text('john')],
                 ),
                 Column(children: [ Text('Nike')],
                 ),
                 Column(children: [ Text('Nike')],
                 ),
               ],),
               Row(children: [
                 Text('Hello'),
                 Column(children: [Text('abc')],
                 ),
              Column(children: [ Text('Nike')],
              ),
              Column(children: [ Text('Nike')],
              ),
              
               ],)
           ]
           ),
          

          
         

           
          )
          )
    );
//   }
  }
}