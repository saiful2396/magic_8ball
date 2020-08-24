import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic8Ball(),
    );
  }
}
 class Magic8Ball extends StatefulWidget {
   @override
   _Magic8BallState createState() => _Magic8BallState();
 }

 class _Magic8BallState extends State<Magic8Ball> {

  int no = 1;
  void getQNA(){
    setState(() {
      no = Random().nextInt(5) + 1;
    });
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.teal,
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text('Ask me Anything'),
         centerTitle: true,
       ),

       body: Center(
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: FlatButton(
             onPressed: () => getQNA(),
             child: Image.asset('images/ball$no.png'),),
         ),
       ),

     );
   }
 }
