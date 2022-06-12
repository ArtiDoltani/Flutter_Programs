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
                mycontainer(Colors.yellow,"Yellow",(){
                  setState(() {
                     containerColor=Colors.yellow;
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
       
      ),  );
     }
 }
class mycontainer extends StatelessWidget {
  Color colorcontainer;
  VoidCallback onClick;
  String textColor;
   mycontainer(this.colorcontainer,this.textColor,this.onClick);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Container(
            height: 70,
            width: 70,
            color: colorcontainer,
          child: TextButton(
            onPressed: onClick,
            child: Text(textColor,style: TextStyle(color: Colors.white),),
          ),
            
       ),
    );
   }
    
  }

