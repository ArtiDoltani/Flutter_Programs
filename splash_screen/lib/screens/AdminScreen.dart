import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginScreen.dart';

class AdminView extends StatefulWidget {
  const AdminView({Key? key}) : super(key: key);

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
 String email='',age ='',usertype='';
  //here we are creating method to get data 
  void initState(){
    super.initState();
  
   loaddata();
  }
  loaddata() async{
SharedPreferences sp=await SharedPreferences.getInstance();
email=sp.getString('email') ?? '';
age=sp.getString('age') ?? '';
usertype=sp.getString('usertype')?? '';
setState(() {
  
});
  }
  @override
   Widget build(BuildContext context) {
   return  Scaffold(
    appBar: AppBar(
      title:const Text('Admin View'),
      centerTitle: true,
   automaticallyImplyLeading: false,),

      
    body:Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
       const     Text('Email'),
            Text(email.toString())
          ],),
       const   SizedBox(height: 20,),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          const  Text('Age'),
            Text(age.toString())
          ],),
     const  SizedBox(height: 20,),
 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          const  Text('User Type'),
            Text(usertype.toString())
          ],),
        const   SizedBox(height: 40,),
           InkWell(
                onTap: () async{
                   SharedPreferences sp=await SharedPreferences.getInstance();
                   sp.clear();
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen(),)
                  );
                },
               

                child: Container(
                  width: double.infinity,
                  height: 50,
              color: Color.fromARGB(255, 110, 108, 237),
                     child: Center(child: Text('Logout'))
                ),
              ),
        ],
        ),
    ),
   );
   
  }
}