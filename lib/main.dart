// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'screen_text.dart';
import 'text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _count = 0;

  List<String> textToShow = [
    'This course is getting interesting',
    'I need more time to study',
    'How many moves do you watch a day?',
    'This is how we roll',
    'Do you want to read more?',
    'Are you a Marvel Fan?'
  ];

  void changeText (){
    setState(() {
      if (_count < textToShow.length){
        _count += 1;
        if(_count == textToShow.length){
          _count = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red, title: Text('Flutter Assignment'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScreenText(textScreen: textToShow[_count],),
              TextControl(onPressed: changeText,)
            ],
          ),
        ),
      ),
    );
  }
}
