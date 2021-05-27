import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
            
    Path path_0 = Path();
    path_0.moveTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.lineTo(size.width*0.7435417,size.height*0.9560000);
    path_0.lineTo(size.width,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Colors.yellow;
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
  }
  
}