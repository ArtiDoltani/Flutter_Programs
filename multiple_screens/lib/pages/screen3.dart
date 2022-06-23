import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multiple_screens/pages/screen1.dart';
import 'package:multiple_screens/pages/screen2.dart';
import 'package:multiple_screens/pages/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("3rd Screen"),
      ),
       body: Center(
         child: Container( 
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context )=>Screen4()
                    ));
            }, 
          child: Text("Go to  Screen 4"),
           style: TextButton.styleFrom(
                  primary: Colors.white, 
                  backgroundColor: Colors.purple,
             textStyle:
                      const TextStyle(fontSize: 24, )),
),
SizedBox(height: 30,),
 TextButton(
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context )=>Screen2()
                    ));
 }, 
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