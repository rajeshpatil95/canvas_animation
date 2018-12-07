import 'package:canvas_animation/circle/circle_painter.dart';
import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => new _CircleState();
}

class _CircleState extends State<Circle> with SingleTickerProviderStateMixin{
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
      painter: new CirclePainter(_fraction),
    );
  }
}