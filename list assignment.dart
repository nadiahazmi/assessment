import 'package:flutter/material.dart';

void main => runApp(MyApp());

class MyApp extends StatelessWidget {

  var items = ['Banana', 'Strawberry', 'Peach', 'Orange', 'Apple'];

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: Text('Le Fruits'),
        ),
        
        body: Column(children: [
          Text('What type of fruits do you want to eat now?'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:8, vertical: 16) ,
            child: TextField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter number'
              ),
            ),
          ,
        ],
      ),
    );
  }
}