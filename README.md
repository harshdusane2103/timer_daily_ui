# timer_daily_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
<h1 align="center">#️⃣5.1 Flutter Button#️⃣</h1>
<!-- <h3 aling=center></h3>  -->
<p align=center>
  <img src="https://github.com/harshdusane2103/timer_daily_ui/blob/master/button.png"width=22% height=35% align=center>
</p>

<h1 align="center">#️⃣5.1 Asynchronous Programming#️⃣</h1>
<!-- <h3 aling=center></h3>  -->
<p align=center>
  

1> What is  Asynchronous Programming?

=>  Asynchronous Programming is a Programming paradigam that allows tasks or operations to run independently and concurrently ,without waitting for each other to complete before moving on to the next task.

2> What is Future Class ?
=>   A Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

3> What is Duration class & Future.delayed() constructor with Example ?
 Duration class :
 => The Duration class represents a span of time, measured in milliseconds. It's commonly used for animations, delays, and timing-related operations within Flutter applications. 

Future.delayed() constructor :
=> The Future.delayed() constructor in Flutter creates a Future object that completes after a specified duration.

Code Example :

import 'dart:io';
void main()
{
  Future.delayed(
    Duration(seconds: 5),
    () => print("Hello"),

  );

}

4> What is the Use of the async & await keyword?
=>' async' and 'await 'are keywords used to work with asynchronous code in a more synchronous manner:

async:
Used to mark a function as asynchronous, meaning it can perform tasks asynchronously and return a Future.
When a function is marked as async, it allows the use of the await keyword inside it.
await:
Used to pause the execution of an async function until a Future completes.
When encountering await, the function pauses execution until the awaited Future completes, then it resumes execution with the result of that Future.

Code Example :


import 'dart:io';
void main()
async{
  Future.delayed(
    Duration(seconds: 2),
    () => print("Hello"),

  );
  await Future.delayed(
    Duration(seconds: 1),
    () => print("Flutter"),

  );
  

}

5>  What is Recursion ? With Example. 
 => Recursion refers  to the technique of a function calling itself .
  
  Code Exampleimport 'dart:io';
void main()
async{
  Future.delayed(
    Duration(seconds: 2),
    () => print("Hello"),

  );
  await Future.delayed(
    Duration(seconds: 1),
    () => print("Flutter"),

  );
  

}

6> What is Timer class with example ?
=>    The Timer class is used to create a delayed or periodic timer. It allows you to execute a function after a specified duration or repeatedly at a specified interval.

code Example :

import 'dart:async';
import 'dart:io';
void main()
{
  Timer(
    Duration(seconds: 1),(){
      
      print('hello flutter');
    }
  );
}

7> What is Timer.periodic and use with Example?
=> Timer.periodic is used to create a periodic timer that invokes a callback at a specified interval.

Code Example :
import 'dart:async';
import 'dart:io';
void main()
{
  Timer.periodic(Duration(seconds: 1), (timer) 
  { 
    print('Om SaiRam');
   });
}


</p>
