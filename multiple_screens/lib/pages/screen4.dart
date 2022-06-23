import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multiple_screens/pages/screen1.dart';
import 'package:multiple_screens/pages/screen2.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fourth Screen"),
      ),
       body: Center(
         child: Container( 
         child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
               Navigator.pop(context);
            }, 
          child: Text("Back to  Screen 3"),
           style: TextButton.styleFrom(
                  primary: Colors.white, 
                  backgroundColor: Colors.purple,
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
SizedBox(height: 30,),
 TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context )=>Screen2()
                  ));}, 
          child: Text("Back to  Screen 2"),
           style: TextButton.styleFrom(
                  primary: Colors.black, 
                  backgroundColor: Color.fromARGB(255, 235, 95, 142),
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
SizedBox(height: 30,),
 TextButton(
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context )=>Screen1()
                    ));
  }, 
          child: Text("Back to  Screen 1"),
           style: TextButton.styleFrom(
                  primary: Colors.black, 
                  backgroundColor: Colors.orange,
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