import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var fruits = ['Banana', 'Strawberry', 'Peach', 'Orange', 'Apple'];
  final textController = TextEditingController();
  String? printedfruit;
  String wrongInput = 'Wrong Input';
  String textFruit = 'The chosen fruit is';

  void setFruit() {
    final enteredNumber = int.parse(textController.text);

    setState(() {
      if (enteredNumber == 1) {
        printedfruit = textFruit + ' ' + fruits[0];
      } else if (enteredNumber == 2) {
        printedfruit = textFruit + ' ' + fruits[1];
      } else if (enteredNumber == 3) {
        printedfruit = textFruit + ' ' + fruits[2];
      } else if (enteredNumber == 4) {
        printedfruit = textFruit + ' ' + fruits[3];
      } else if (enteredNumber == 5) {
        printedfruit = textFruit + ' ' + fruits[4];
      } else {
        printedfruit = wrongInput;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Le Fruits'),
        ),
        body: Column(children: [
          SizedBox(height: 30),
          Text('Enter number of your choice between 1- 5'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter number'),
              controller: textController,
              keyboardType: TextInputType.numberWithOptions(decimal: false),
            ),
          ),
          RaisedButton(child: Text('Enter'), onPressed: setFruit),
          SizedBox(height: 30),
          Text(printedfruit == null
              ? 'No value entered'
              : ' ' + printedfruit.toString())
        ]),
      ),
    );
  }
}
