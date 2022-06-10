import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  String fb="Facebook"; 
  Color containerColor=Colors.amber;
  //Color containerColor=Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text(fb),leading:
         Icon(
          Icons.facebook,
            color: Colors.white,//using icon widget
                ),
          ),
          body: Container(
           color: containerColor,
          child: Column(
              children: [
                 Row(children: [

            mycontainer(Colors.blue,"BLUE",
            (() {
              setState(() {
                containerColor=Colors.blue;
              });
            }),),
            mycontainer(Colors.red,"RED",(){
              setState(() {
                containerColor=Colors.red;
              });
            }
            )
            
               ]
                ),
               Row(children:[
                mycontainer(Colors.green,"GREEN",(){
                 setState(() {
                    containerColor=Colors.green;
                 });
                }),
                mycontainer(Colors.orange,"ORANGE",(){
                  setState(() {
                     containerColor=Colors.orange;
                  });
                 
                })
               ] ),
 
          Row(children:[
                mycontainer(Colors.pink,"PINK",(){
                  setState(() {
                     containerColor=Colors.pink;
                  });
                }),
                mycontainer(Colors.purple,"PURPLE",(() {
                  setState(() {
                     containerColor=Colors.purple;
                  });
                })
               
               ),
              ] 

)]

)


) 
       
      )  );
     }
 }
class mycontainer extends StatelessWidget {
  Color colorcontainer;
  VoidCallback OnClick;
  String textColor;
   mycontainer(this.colorcontainer,this.textColor,this.OnClick);


  @override
  Widget build(BuildContext context) {
    return Container(
          height: 70,
          width: 70,
          color: colorcontainer,
        
          
     );
   }
    
  }

