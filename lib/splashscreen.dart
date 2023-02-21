import 'dart:async';

import 'package:first_app/main.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const MyHomePage(
          title: 'Flutter',
        );
      }));
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Gallary',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
