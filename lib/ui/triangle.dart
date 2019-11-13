import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawTriangle extends CustomPainter {
  Paint _paint;
  Random random = Random();

  DrawTriangle() {
    _paint = Paint()
      ..color = Color.fromRGBO(random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,)
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Triangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(100, 100),
        painter: DrawTriangle(),
      ),
    );
  }
}
