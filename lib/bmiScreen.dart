import 'package:flutter/material.dart';

class BMISCREEN extends StatelessWidget{
  double result=0;
  BMISCREEN(this.result);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI result',
          style: TextStyle(
            fontSize: 30
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI = ${result.round()}',style: TextStyle(
                fontSize: 50,fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ),
      ),
    );
  }

}