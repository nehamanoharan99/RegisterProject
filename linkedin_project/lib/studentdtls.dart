import 'dart:async';
import 'package:flutter/material.dart';
import 'package:linkedin_project/StudentModel.dart';
import 'package:linkedin_project/function.dart';
class studentList extends StatefulWidget {
  const studentList({super.key});

  @override
  State<studentList> createState() => _MystudentList();
}

class _MystudentList extends State<studentList> {
  StudentModel? student;
  
  @override
   void initState(){
    super.initState();
    _loadStudent();
   }
   Future<void> _loadStudent() async{
    StudentModel? getStudents= await getStudent();
    setState(() {
      student=getStudents;
    });
   }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details",
        style: TextStyle(color: Colors.blue),),
      ),
       body: student == null
            ? Center(
                child: Text("No Student Data"),
              )
            : Padding(
                padding: EdgeInsets.only(left: 200,right: 200),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name : ${student!.firstName}',
                    style: TextStyle(color:Color.fromARGB(255, 210, 101, 12))),
                    Text('Last Name : ${student!.secondName}',
                     style: TextStyle(color:Color.fromARGB(255, 210, 101, 12))),
                    Text('Address : ${student!.address}',
                     style: TextStyle(color:Color.fromARGB(255, 210, 101, 12))),
                    Text('Mobile Number : ${student!.mobile}',
                     style: TextStyle(color:Color.fromARGB(255, 210, 101, 12))),
                  ],
                ),
              ));

    
  }
}
