import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:timer_daily_ui/utils/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    // Future.delayed(Duration(seconds: 2),
    // () {
    // Timer.periodic(Duration(seconds: 30), (timer) {
    // if (index == 4) {
    //     index=0;
    //   }
    //   else {
    //     index ++;
    //   }
    // });

    // );

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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 779,
                width: 384,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asstes/images/bg4.jpg'),
                )),
                child: Container(
                  margin: EdgeInsets.only(top: 150),
                  height: 200,
                  width: 200,
                  // color: Colors.black12,
                  // ${dateTime.day}/${dateTime.month}/${dateTime.year}
                  child: Column(
                    children: [
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
                          Text(
                            '$Day ,',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${dateTime.day} ${Month}',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 50),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 5)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              ...List.generate(
                                  60,
                                  (index) => Transform.rotate(
                                        angle: ((index+1) * 6 * pi)/180,
                                        child: ((index + 1) % 5 ==0)
                                            ?  VerticalDivider(
                                                thickness: 3,
                                                color: Colors.red,
                                                endIndent: 170,
                                              )
                                            : VerticalDivider(
                                                thickness: 1,
                                                color: Colors.white,

                                                endIndent:180,
                                              ),
                                      )),
                              Transform.rotate(
                                angle:
                                    (dateTime.hour + (dateTime.minute / 60)) * 30 * pi / 180,
                                child: VerticalDivider(
                                  thickness: 4,
                                  color: Colors.white,
                                  indent: 45,
                                  endIndent: 100,
                                ),
                              ),
                              Transform.rotate(
                                angle: (dateTime.minute * 6 * pi) / 180,
                                child: VerticalDivider(
                                  thickness: 3,
                                  color: Colors.white,
                                  indent: 32,
                                  endIndent: 100,
                                ),
                              ),
                              Transform.rotate(
                                angle: (dateTime.second * 6 * pi) / 180,
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Colors.white,
                                  indent: 23,
                                  endIndent: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}

int index = 0;
