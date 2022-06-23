import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multiple_screens/pages/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
      ),
       body: Center(
         child: Container( 
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context )=>Screen3()
                    ));
            }, 
          child: Text("Go to  Screen 3"),
           style: TextButton.styleFrom(
                  primary: Colors.white, 
                  backgroundColor: Colors.purple,
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
SizedBox(height: 30,),
 TextButton(onPressed: (){
             Navigator.pop(context);
 }, 
          child: Text("Back to  Screen 1"),
           style: TextButton.styleFrom(
                  primary: Colors.black, 
                  backgroundColor: Colors.green,
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
 
          ]),
          ),
       ),
      ),
    );
  }
}