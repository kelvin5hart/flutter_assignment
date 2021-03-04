import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final Function onPressed;

  TextControl({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Show Next Message'));
  }
}
