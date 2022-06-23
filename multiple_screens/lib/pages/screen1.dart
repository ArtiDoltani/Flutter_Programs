import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multiple_screens/pages/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
      ),
      body: Center(
        child: Container( 
          child: TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context )=>Screen2()
                    ));
          }, 
          child: Text("Go to  Screen 2"),
           style: TextButton.styleFrom(
                  primary: Colors.purple, 
                  backgroundColor: Colors.amber,
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
          ),
      ),
       ),
      
    );
  }
}