import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        switch (dateTime.weekday) {
          case 1:
            day = 'Monday';
            break;
          case 2:
            day = 'Tuesday';
            break;
          case 3:
            day = 'Wednesday';
            break;
          case 4:
            day = 'Thursday';
            break;
          case 5:
            day = 'Friday';
            break;
          case 6:
            day = 'Saturday';
            break;
          case 7:
            day = 'Sunday';
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
            Container(
              height: 779,
              width: 384,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asstes/images/bg.jpg'),
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
                          '${(dateTime.hour > 12) ? ((dateTime.hour % 12) > 9) ? dateTime.hour % 12 : ('0${dateTime.hour % 12}') : dateTime.hour}  '':'
                          '${(dateTime.minute > 9) ? dateTime.minute : ('0${dateTime.minute}')}',
                          style: const TextStyle(
                              fontSize: 48, color: Colors.white),
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
                        Center(
                            child: Text(
                          '$day',
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
