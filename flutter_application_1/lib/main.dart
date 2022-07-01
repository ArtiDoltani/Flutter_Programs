import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main() {
  runApp(MyApp());
}
// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//    home: Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Flutter App",
//           style: TextStyle(color: Colors.amber),
          
//           ),
          
//           ),
//           body: Container(
//             color: Colors.red,
//           child:Container(
//             width: 50.0,
//             height: 50.0,
//             color: Colors.amber,
//             child: TextButton(
//               onPressed: (){

//               },
//               child: Text("Hello!", style: TextStyle(color: Colors.blue),
//               ) ,
//               ),
//           )
         

//           ),
//     )
//     );
//   }
// }
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
           
          // child: Column(
          //   children: [
          //  Text(mytext, style: TextStyle(color: Colors.amber,fontSize: 20.0),)  ,
          //   Text("Arti", style: TextStyle(color: Colors.white ,fontSize: 20.0),)  ,
          //   Icon(Icons.home,color: Colors.white,)
          //   ],
          // ),
 child: Row(
            children: [
           Text(mytext, style: TextStyle(color: Colors.amber,fontSize: 20.0),
           )  ,
           SizedBox(width: 20),
           Text("Home sweet home", style: TextStyle(color: Colors.white ,fontSize: 20),
           )  ,
            SizedBox(width: 20),
            Icon(Icons.home,color: Colors.blue)
            ],
          ),
          // child:Container(
          //   width: 50.0,
          //   height: 50.0,
          //   color: Colors.amber,
          //   child: TextButton(
          //     onPressed: (){
          //       setState(() {
          //         mytext="Hello Arti";
          //       });
          //     },
          //     child: Text(mytext, style: TextStyle(color: Colors.blue),
          //     ) ,
          //     ),
           )
         

          // ), 
    )
    );
//   }
  }
}