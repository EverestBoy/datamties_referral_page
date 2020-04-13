import 'package:flutter/material.dart';

import 'OpenPainter.dart';

class LogoPage extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("slkjd"),
      ),
      body: Container(
          child: Center(
        child: Container(
          width: 280,
          height: 320.0,
          child: CustomPaint(
            painter: OpenPainter(),
          ),
        ),
      )),
    );
  }
}