import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Actions',
          style: TextStyle(fontSize: 36, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            color: Colors.blue,
            value: 0.5,
          ),
          Center(
              child: Text(
            'Common Button',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          Container(
            height: 70,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('https://www.youtube.com/');
                          },
                          child: Text('youtub')),
                      ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [Icon(Icons.add), Text('Harsh')],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
            'Filled Button',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          Container(
            height: 70,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FilledButton(onPressed: () {}, child: Text('Hello')),
                      FilledButtonTheme(
                          data: FilledButtonThemeData(), child: Text('Flutter'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
            'Outlined Button',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          Container(
            height: 70,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(onPressed: () {}, child: Text('Hello ')),
                      OutlinedButton(onPressed: () {}, child: Text('Dart'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
            'Text Button',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          Container(
            height: 70,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {}, child: Text('Hello')),
                      TextButton(onPressed: () {}, child: Text('AkhilSir')),
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
                'Floating Action  Button',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
          Container(
            height: 80,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     FloatingActionButton(backgroundColor: Colors.orange,
                      onPressed: () {

                     },child: Icon(Icons.add),),
                      FloatingActionButton(

                        backgroundColor: Colors.white,
                        
                        onPressed: () {
                          

                     },child: Icon(Icons.manage_history_sharp,color: Colors.purple,),),
                      FloatingActionButton(backgroundColor: Colors.green,
                        onPressed: () {

                     },child: Icon(Icons.call),),

                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
                'Icons Button',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
          Container(
            height: 70,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.settings)), IconButton(onPressed: () {

                    }, icon: Icon(Icons.shopping_cart)), IconButton(onPressed: () {

                    }, icon: Icon(Icons.favorite)), IconButton(onPressed: () {

                    }, icon: Icon(Icons.battery_1_bar_rounded)),
                    ],
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}


