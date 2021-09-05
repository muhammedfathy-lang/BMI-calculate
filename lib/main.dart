import 'dart:math';
import 'package:flutter/material.dart';
import 'bmiScreen.dart';

void main(){
  runApp( MaterialApp(
      home:MyApp()));

}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>BMIState();

}
class BMIState extends State<MyApp>{
  int Age=20;
  int weight=50;
  double height=100;
  bool isMale=true;
  double result=0;
  @override
  Widget build(BuildContext context) {
  return MaterialApp(home: Scaffold(
    appBar: AppBar(
      title: Text('BMI Calculate',style: TextStyle(
        fontSize: 25,color: Colors.white
      ),),
    ),
    body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:isMale?Colors.blue: Colors.grey[300],
                      ),
                      child: Column(children: [
                        Image(image: AssetImage('assets/image/Male.png',
                        ),width: 90,height: 90,),
                        Text('MALE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                      ],),
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:isMale? Colors.grey[300]:Colors.blue,
                      ),
                      child: Column(children: [
                        Image(image: AssetImage('assets/image/Female.png',
                        ),width: 90,height: 90,),
                        Text('FEMALE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                      ],),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Column(
                children: [
                  Text('HEIGHT',style:TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round()}',
                        style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),),
                      SizedBox(width: 10,),
                      Text('cm',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Slider(value: height,
                      min: 80,
                      max:220
                      ,onChanged: (value){
                   setState(() {
                     height=value;
                   });
                      }
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Column(children: [
                        Text('WEIGHT',style:TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                        )),
                        Text('$weight',style:TextStyle(
                            fontSize: 50,fontWeight: FontWeight.bold
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },heroTag: 'weigh-',
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                              heroTag: 'weigh+',
                              child: Icon(Icons.add),
                              mini: true,
                            )
                        ],)
                      ],),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Column(children: [
                        Text('AGE',style:TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                        )),
                        Text('$Age',style:TextStyle(
                            fontSize: 50,fontWeight: FontWeight.bold
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              Age--;
                            });
                          },
                            heroTag: 'age-',
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              Age++;
                            });
                          },
                            heroTag: 'age+',
                              child: Icon(Icons.add),
                              mini: true,
                            )
                        ],)
                      ],),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(onPressed: (){
            result=(weight/pow(weight/100, 2));
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>BMISCREEN(result)
            ));
          },
            height: 40,
          child: Text('CALCULATE BMI',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),),),
        )
      ],
    ),
  ),);
  }

}