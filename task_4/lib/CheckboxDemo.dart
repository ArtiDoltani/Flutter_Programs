import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({Key? key}) : super(key: key);

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  // bool ischeckedSMS=false;
  // bool ischeckedATM=false;
bool monday=false;
bool tuesday=false;
bool wednesday=false;
bool thursday=false;
bool friday=false;
bool weekday=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("CheckBox Example"),

        ),
        body: Container(
          child: Column(
            children: [
          //     ListTile(
          //       title:Text("SMS"),
          //  leading:   Checkbox(value: ischeckedSMS,
          //      onChanged: (value){
          //       setState(() {
          //         ischeckedSMS=value!;
          //       });}
          //      )
          //     ),
          //        ListTile(
          //       title:Text("ATM"),
          //  leading:   Checkbox(value: ischeckedATM,
          //      onChanged: (value){
          //       setState(() {
          //         ischeckedATM=value!;
          //       });}
          //      )
          //     ),
          // =====> Class Task
ListTile(
                title:Text("Weekdays"),
           leading:   Checkbox(
            value: weekday,
               onChanged: (value){
                setState(() {
                  weekday=value!;
                  if(weekday==value){
                    monday=weekday ;
                    tuesday=weekday;
                    wednesday=weekday;
                    thursday=weekday;
                    friday=weekday;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
                }
                );}
               )
              ),
              ListTile(
                title:Text("Monday"),
           leading:   Checkbox(value: monday,
               onChanged: (value){
                setState(() {
                  monday=value!;
                  if(monday==false){
                    weekday=false;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
                 
                });}
               )
              ),
              ListTile(
                title:Text("Tuesday"),
           leading:   Checkbox(value: tuesday,
               onChanged: (value){
                setState(() {
                  tuesday=value!;
                   if(tuesday==false){
                    weekday=false;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
                  
                });}
               )
              ),
              ListTile(
                title:Text("Wednesday"),
           leading:   Checkbox(value: wednesday,
               onChanged: (value){
                setState(() {
                  wednesday=value!;
                   if(wednesday==false){
                    weekday=false;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
              
                });}
               )
              ),
              ListTile(
                title:Text("Thursday"),
           leading:   Checkbox(value: thursday,
               onChanged: (value){
                setState(() {
                  thursday=value!;
                   if(thursday==false){
                    weekday=false;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
                 
                });}
               )
              ),
              ListTile(
                title:Text("Friday"),
           leading:   Checkbox(value: friday,
               onChanged: (value){
                setState(() {
                  friday=value!;
                   if(friday==false){
                    weekday=false;
                  }
                  else if(
                    monday== true && tuesday==true && wednesday==true 
                    && thursday==true && friday==true){

                 weekday=true;
                    }
                });}
               )
              ),




            ],
          ),
        ), 
        ),
    );
  }
}