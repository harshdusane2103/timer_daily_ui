import 'package:flutter/material.dart';
import 'package:timer_daily_ui/timer_app/aenalog.dart';
import 'package:timer_daily_ui/timer_app/degital_clock.dart';
import 'package:timer_daily_ui/timer_app/strap_watch.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>strapScreen(),
        '/de':(context)=>degitalScreen(),
        '/aena':(context)=>aenlogscreen(),
      },
    );
  }
}

