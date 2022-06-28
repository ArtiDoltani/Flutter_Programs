import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}
  // Enum List of Constants
enum Gender{
  Male,Female
  }
  enum Subject{Java,C,Python,Javascript}
class _RadioDemoState extends State<RadioDemo> {
  // String? gender; 
  Gender? gender=Gender.Male; 
  Subject? subject;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
//             ListTile(
//               title: Text("Male"),
//               leading: 
//               Radio(value: Gender.Male, groupValue: gender, onChanged: (Gender? value){
//                 setState(() {
//                   gender=value;
//                 });
//             }),
// ),
// ListTile(
//   title: Text("Female"),
//          leading: Radio(value: Gender.Female, groupValue: gender, onChanged: (Gender? value){
//               setState(() {
//                 gender=value;
//               });
//              }),
//             )
        //=====> Task  
       ListTile(
  title: Text("Java"),
         leading: Radio(value: Subject.Java, groupValue: subject, onChanged: (Subject? value){
              setState(() {
                subject=value;
              });
             }),
            ) ,
            ListTile(
  title: Text("C"),
         leading: Radio(value: Subject.C, groupValue: subject, onChanged: (Subject? value){
              setState(() {
                subject=value;
              });
             }),
            ),
            ListTile(
  title: Text("Python"),
         leading: Radio(value:Subject.Python, groupValue: subject, onChanged: (Subject? value){
              setState(() {
                subject=value;
              });
             }),
            ),
            ListTile(
  title: Text("Javascript"),
         leading: Radio(value: Subject.Javascript, groupValue: subject, onChanged: (Subject? value){
              setState(() {
                subject=value;
              });
             }),
            )
          ],
        )),
    );
  }
}