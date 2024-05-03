import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';
class aenlogscreen extends StatefulWidget {
  const aenlogscreen({super.key});

  @override
  State<aenlogscreen> createState() => _aenlogscreenState();
}

class _aenlogscreenState extends State<aenlogscreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
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
        ),
        body: Column(
          children: [
            SizedBox(height: 100,),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 25, top: 50),
                height: 360,
                width: 360,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                    Border.all(color: Colors.white, width: 4)),
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
                            thickness: 4,
                            color: Colors.orange,
                            endIndent:335,
                          )
                              : VerticalDivider(
                            thickness: 1,
                            color: Colors.white,

                            endIndent:340,
                          ),
                        )),
                    Transform.rotate(
                      angle:
                      (dateTime.hour + (dateTime.minute / 60)) * 30 * pi / 180,
                      child: VerticalDivider(
                        thickness: 4,
                        color: Colors.orange,
                        indent: 45,
                        endIndent: 100,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.minute * 6 * pi) / 180,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.green,
                        indent: 32,
                        endIndent: 100,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.second * 6 * pi) / 180,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.white,
                        indent:25,
                        endIndent:100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:160,),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop('/de');


            }, child:Text('Back',style:TextStyle(color: Colors.teal),)

            ),
          ],
        ),
      ),
    );
  }
}
