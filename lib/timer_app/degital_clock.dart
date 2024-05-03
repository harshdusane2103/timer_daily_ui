import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class degitalScreen extends StatefulWidget {
  const degitalScreen({super.key});

  @override
  State<degitalScreen> createState() => _degitalScreenState();
}

class _degitalScreenState extends State<degitalScreen> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        switch (dateTime.weekday) {
          case 1:
            Day = 'Monday';
            break;
          case 2:
            Day = 'Tuesday';
            break;
          case 3:
            Day = 'Wednesday';
            break;
          case 4:
            Day = 'Thursday';
            break;
          case 5:
            Day = 'Friday';
            break;
          case 6:
            Day = 'Saturday';
            break;
          case 7:
            Day = 'Sunday';
        }
        switch (dateTime.month) {
          case 1:
            Month = 'Jaun';
            break;
          case 2:
            Month = 'Feb';
            break;
          case 3:
            Month = 'Mar';
            break;
          case 4:
            Month = 'Apr';
            break;
          case 5:
            Month = 'May';
            break;
          case 6:
            Month = 'Jan';
            break;
          case 7:
            Month = 'July';
          case 8:
            Month = 'Aug';
            break;
          case 9:
            Month = 'Sept';
            break;
          case 10:
            Month = 'Oct';
            break;
          case 11:
            Month = 'Nev';
            break;
          case 12:
            Month = 'Dec';
            break;
        }

        dateTime = DateTime.now();
      });
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: InkWell(
                onTap:() {
                  Navigator.of(context).pop('/');
                },child: Icon(Icons.arrow_back_ios,color: Colors.white,)),


            title: Text('     Degital Clock',style: TextStyle(color: Colors.white,fontStyle:FontStyle.italic,fontSize: 32),),


          ),
          body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: h,
            width: w,
            child: Column(
              children: [
                SizedBox(height: 130,),
                Stack(children: [
                  Container(
          
                    height: 360,
                    width: 360,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
          
                      border:Border.all(color: Colors.white,width: 4)
          
                       ),
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top:80),
                      height: 200,
                      width: 250,
                      // color: Colors.black12,
                      // ${dateTime.day}/${dateTime.month}/${dateTime.year}
                      child: Column(children: [
                        Text(
                          '$Day',
                          style: TextStyle(color: Colors.orange, fontWeight:FontWeight.bold,fontSize: 24),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${(dateTime.hour > 12) ? ((dateTime.hour % 12) > 9) ? dateTime.hour % 12 : ('0${dateTime.hour % 12}') : dateTime.hour}:'
                              '${(dateTime.minute > 9) ? dateTime.minute : ('0${dateTime.minute}')}:${(dateTime.second)}',
                              style: const TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${(dateTime.hour >= 12) ? 'PM' : 'AM'}',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
          
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '${dateTime.day} ${Month}',
                              style: TextStyle(fontSize: 18, color: Colors.green),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
          
                ]
                ),
                SizedBox(height:180,),
                Positioned(
                  bottom: 1,
                  child: OutlinedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/aena');
          
                  }, child:Text('Next',style:TextStyle(color: Colors.teal),)),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
