import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_4/Candidate_data.dart';

class ShowCandidate_Data extends StatelessWidget {
  var name;
  var gender;
  var shift;
  var media;
  var level;
  var timing;
 ShowCandidate_Data(
  {this.name,this.gender,this.level,this.media,this.timing,this.shift}
 ) ;
  String company_name="10Pearls";
//List<enum> data;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
home: Scaffold(
  appBar: AppBar(backgroundColor: Colors.greenAccent,
    title: Text("Email for scheduling an interview of candidate", style: TextStyle(color: Colors.black),),
  ),
  body: Center(
    child: Container(
      
child: Text(
      'Invitation to interview $company_name /Interview with $company_name for the Software developer position \n '
      '  Hi $name  Dear $gender $name, \n'
      '  Thank you for applying to $company_name \n'
    '    You are doing well Your Skill level is too good As you are an \n' 
    '    $level and you are selected in our $company_name Company in \n'
      '  $shift.  \n'
      '  We will be connected on your extremely used social media $media. ',
      style: TextStyle(fontSize: 20),

    ),
    ),
  ),

    ));
  }
}