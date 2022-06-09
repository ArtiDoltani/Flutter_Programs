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
Padding(
                 padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child:Container(
                  height: 70,
                  width: 70,
                  color: Colors.blue,
            child: TextButton(
                      onPressed:(){
              setState(() {
                        containerColor=Colors.blue;
                  }
     );
   } ,
        child: Text("BLUE", style: TextStyle(color: Colors.white),),
          ),
      )
      ),
Padding(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child:Container(
          height: 70,
          width: 70,
          color: Colors.red,
          child: TextButton(
            onPressed:(){
              setState(() {
                containerColor=Colors.red;
        }
);
} ,
        child: Text("RED", style: TextStyle(color: Colors.white),),
          ),
      )
      )
  ],), 
 Row(children: [
Padding(
                 padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child:Container(
                  height:  70,
                  width:  70,
                  color: Colors.green,
            child: TextButton(
                      onPressed:(){
              setState(() {
                        containerColor=Colors.green;
                  }
     );
   } ,
        child: Text("GREEN", style: TextStyle(color: Colors.white),),
          ),
      )
      ),
Padding(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child:Container(
          height: 70,
          width: 70,
          color: Colors.purple,
          child: TextButton(
            onPressed:(){
              setState(() {
                containerColor=Colors.purple;
        }
);
} ,
        child: Text("PURPLE", style: TextStyle(color: Colors.white),
          ),
      )
      )
      )
  ],), 
  Row(children: [
Padding(
                 padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child:Container(
                  height: 70,
                  width: 70,
                  color: Colors.pink,
            child: TextButton(
                      onPressed:(){
              setState(() {
                        containerColor=Colors.pink;
                  }
     );
   } ,
        child: Text("PINK", style: TextStyle(color: Colors.white),),
          ),
      )
      ),
Padding(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child:Container(
          height: 70,
          width: 70,
          color: Color.fromARGB(255, 202, 122, 92),
          child: TextButton(
            onPressed:(){
              setState(() {
                containerColor=Color.fromARGB(255, 202, 122, 92);
        }
);
} ,
        child: Text("BROWN", style: TextStyle(color: Colors.white),),
          ),
      )
      )
  ],), 
            ],)
          
          ),
  )
  );

//   }
  }
}