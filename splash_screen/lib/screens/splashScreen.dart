import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/screens/homeScreen.dart';
import 'package:splash_screen/screens/loginScreen.dart';
import 'package:splash_screen/screens/student.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
   islogin();
   
  }
  void islogin()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    bool islogin= sp.getBool('islogin')??false;
    String usertype=sp.getString('usertype')?? '';
    if(islogin){
      if(usertype=='Student'){
        Timer(
   const   Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const Student_view(),));
    });
      }
      else{
        Timer(
     const Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const Homescreen(),));
    });
      }
 
    }
    else{
       Timer(
    const  Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen(),));
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: 
 Image(
  height:double.infinity,
  fit: BoxFit.fitHeight,
  image: NetworkImage('https://images.pexels.com/photos/3559235/pexels-photo-3559235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
    );
  }
}