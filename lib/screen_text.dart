import 'package:flutter/material.dart';


class ScreenText extends StatelessWidget {

  final String textScreen;

  ScreenText({this.textScreen});

  @override
  Widget build(BuildContext context) {
    return Text(textScreen, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
  }
}
