import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:task_4/ShowCandidate_Data.dart';
class Candidate_data extends StatefulWidget {
  const Candidate_data({Key? key}) : super(key: key);

  @override
  State<Candidate_data> createState() => _Candidate_dataState();
}
 // Enum List of Constants
enum Gender{
  Male,Female
  }
  enum Level{
    Beginner,InterMediate,Expert
  }
   enum Shift{
    Morning,Evening,  }
   enum Media{
    Snapchat,Facebook,Insta
  }
class _Candidate_dataState extends State<Candidate_data> {
  TextEditingController Namecontroller=TextEditingController();
 String? genderinfo;
 String? shiftinfo;
 String? timing1;
  // String timing2='4pm to 11pm';
 String? proglevel;
 String? socialmedia;

  Gender? gender;
  Level? level;
  Shift? shift;
  Media? media;

  // List<enum> data=[Gender,Shift,Level,Media];
  @override
  Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
         
          children: [
            Text("Candidate details", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            TextField(
              controller: Namecontroller,
              
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                label: Text("Enter Name") ),
              
            ),
            Text("Gender"),
            ListTile(
              title: Text("Male"),
              leading: 
              Radio(value: Gender.Male, groupValue: gender, onChanged: (Gender? value){
                setState(() {
                  gender=value;
                });
            }),
),
ListTile(
  title: Text("Female"),
         leading: Radio(value: Gender.Female, groupValue: gender, onChanged: (Gender? value){
              setState(() {
                gender=value;
              });
             }),
            ),
             Text("Programming Level"),
                  ListTile(
              title: Text("Beginner"),
              leading: Radio(value: Level.Beginner, groupValue: level, onChanged: (Level? value){
                setState(() {
                 level=value;
                 proglevel='Beginner';
                });
            }),
),
ListTile(
  title: Text("InterMediate"),
         leading: Radio(value: Level.InterMediate, groupValue: level, onChanged: (Level? value){
              setState(() {
                level=value;
                 proglevel='Intermediate';
              });
             }),
            ),
            ListTile(
  title: Text("Expert"),
         leading: Radio(value: Level.Expert, groupValue: level, onChanged: (Level? value){
              setState(() {
                level=value;
                 proglevel='Expert';
              });
             }),
            ),
             Text("Working Shift"),
 ListTile(
  title: Text("Morning"),
         leading: Radio(value: Shift.Morning, groupValue: shift, onChanged: (Shift? value){
              setState(() {
                shift=value;
                shiftinfo='Morning';
              });
             }),
            ),
              ListTile(
  title: Text("Evening"),
         leading: Radio(value: Shift.Evening, groupValue: shift, onChanged: (Shift? value){
              setState(() {
                shift=value;
                shiftinfo='Evening';
              });
             }),
            ),
             Text("Social Media" ,),
                  ListTile(
  title: Text("Instagram"),
         leading: Radio(value: Media.Insta, groupValue: media, onChanged: (Media? value){
              setState(() {
                media=value;
                socialmedia='Instagram';
              });
             }),
            ),
                 ListTile(
  title: Text("Facebook"),
         leading: Radio(value: Media.Facebook, groupValue: media, onChanged: (Media? value){
              setState(() {
                media=value;
                socialmedia='Facebook';
              });
             }),
            ),
                 ListTile(
  title: Text("Snapchat"),
         leading: Radio(value: Media.Snapchat, groupValue: media, onChanged: (Media? value){
              setState(() {
                media=value;
                socialmedia='Snapchat';
              });
             }),
            ),
            ElevatedButton(onPressed: (){
            String name=Namecontroller.text;
            gender==Gender.Male ? genderinfo= 'Mr' : genderinfo='Miss';
            shift==Shift.Morning ? timing1="Morning Shift, from 9am to 4pm " : 
            timing1="Morning Shift, from 9am to 4pm " ;
            if(
              name.isEmpty || gender==null || proglevel==null || socialmedia==null ||
              shiftinfo==null){
                showDialog(
                  barrierDismissible: false,
                  context: context, builder:
                 (BuildContext context)=>
                 AlertDialog(
                  title: Text("Please fill all the fields"),
                    actions: [TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Ok"))],
                 )
                 );
              }
              else{
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context)=>ShowCandidate_Data(
                  name: name,
                  shift: timing1,
                  level: proglevel,
                  media: socialmedia,
                  gender: genderinfo,
                )
              )
              );}
              
            }, child: Text("Submit")
            )
  ],
        )),
    );
  }
}