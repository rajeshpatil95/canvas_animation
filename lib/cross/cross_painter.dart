import 'package:flutter/material.dart';

class CrossPainter extends CustomPainter {
  Paint _paint;
  double _fraction;

  CrossPainter(this._fraction) {
    _paint = new Paint()
      ..color = Colors.blue
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // var rect = new Offset(0.0, 0.0) & size;
    //canvas.drawRect(rect, _paint);
    print("fraction ${_fraction}");
    double leftLineFraction, rightLineFraction;

    if (_fraction < 0.5) {
      leftLineFraction = _fraction / 0.5;
      rightLineFraction = 0.0;
    } else {
      leftLineFraction = 1.0;
      rightLineFraction = (_fraction - 0.5) / 0.5;
    }

    canvas.drawLine(
        new Offset(0.0, 0.0), new Offset(size.width * leftLineFraction, size.height * leftLineFraction), _paint);
    canvas.drawLine(
        new Offset(size.width, 0.0), new Offset(size.width - size.width * rightLineFraction, size.height * rightLineFraction), _paint);
  }

  @override
  bool shouldRepaint(CrossPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
