import 'package:canvas_animation/cross/cross_painter.dart';
import 'package:flutter/material.dart';

class Cross extends StatefulWidget {
  @override
  _CrossState createState() => new _CrossState();
}

class _CrossState extends State<Cross> with SingleTickerProviderStateMixin{
 double _fraction = 0.0;
 Animation<double> animation;
 AnimationController controller;

 @override
   void initState() {
     super.initState();
      controller = AnimationController(duration: new Duration(milliseconds: 1000), vsync: this);
      animation = new Tween(begin: 0.0, end: 1.0).animate(controller) 
        ..addListener(() {
          setState(() {
                      _fraction = animation.value;
                    });
        });
      controller.forward();  
   } 


  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      painter: new CrossPainter(_fraction),
    );
  }
}