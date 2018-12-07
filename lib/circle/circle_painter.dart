import 'dart:math';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  Paint _paint;
  double _fraction;

  CirclePainter(this._fraction) {
    _paint = new Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // var rect = new Offset(0.0, 0.0) & size;
    //canvas.drawRect(rect, _paint);
    print("fraction ${_fraction}");
    
    var rect = Offset(0.0, 0.0) & size;
    canvas.drawArc(rect, -pi/ 2, pi * 2 * _fraction, false, _paint);

  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
