import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timer_daily_ui/utils/global.dart';
class LineScreen extends StatefulWidget {
  const LineScreen({super.key});

  @override
  State<LineScreen> createState() => _LineScreenState();
}

class _LineScreenState extends State<LineScreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        dateTime = DateTime.now();
      });
    });
      return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50,left: 50),
              child: LinearProgressIndicator(
                value: dateTime.second/60,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}

