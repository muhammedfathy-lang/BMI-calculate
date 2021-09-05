import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget{
  String gender='';
  double result=0;
  int age=0;
  BmiScreen({required this.gender,required this.result,required this.age});
  @override
  Widget build(BuildContext context) {
 return Scaffold(
     appBar: AppBar(
       title: Text('BMI Result',style: TextStyle(fontSize: 20.0,color: Colors.white),),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Gender     :  $gender',style: TextStyle(fontSize: 25),),
           Text('Result   :  $result',style: TextStyle(fontSize: 25),),
           Text('Age      :  $age',style: TextStyle(fontSize: 25),),
         ],
       ),
     ),

 );
   ;
  }

}