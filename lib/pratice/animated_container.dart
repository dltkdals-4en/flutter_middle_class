import 'dart:math';

import 'package:flutter/material.dart';

class MyAniContainer extends StatefulWidget {
  const MyAniContainer({Key? key}) : super(key: key);

  @override
  _MyAniContainerState createState() => _MyAniContainerState();
}

class _MyAniContainerState extends State<MyAniContainer> {
  double _width =50;
  double _height =50;
  Color _color =Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width, height: _height,
          color: _color,
          duration: Duration(seconds: 1),
          curve: Curves.bounceIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {


          final random = Random();
          _width =random.nextInt(300).toDouble();
          _height =random.nextInt(300).toDouble();
          _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
