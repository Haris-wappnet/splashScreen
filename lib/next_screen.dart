import 'package:flutter/material.dart';

class next_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Custom Widget'),
        ),
        body: Container(
          color: Colors.pink,
        ));
  }
}
