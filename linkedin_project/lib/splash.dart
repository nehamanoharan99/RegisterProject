import 'package:flutter/material.dart';
import 'package:linkedin_project/Home.dart';
import 'package:linkedin_project/RegisterHome.dart';
import 'package:linkedin_project/function.dart';
import 'package:linkedin_project/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<splash> {
  var flag;

  @override 
  void initState(){
     super.initState();
     
     //retrievingData();
     navigateToNextScreen();
     print("init state called");
  }
  void navigateToNextScreen()async{
    await Future.delayed(Duration(seconds: 3));
    final bool isloggedin=await retrievingData();
    if(isloggedin)
    {
   Navigator.push(context, MaterialPageRoute(builder: (context) => StudentReg(),));
 
    }
    else{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Center(
        child: Image.network("https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png",
        width: 100,
        height: 100,
        
      ),
    )
      ]),
    );
  }
//   void retrievingData() async{
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   flag = prefs.getString("Go");
// navigateToNextScreen();

}
