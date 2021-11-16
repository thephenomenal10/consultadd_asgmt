import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = lightBlue;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();

    var paint1 = Paint();
    var path1 = Path();
    paint1.color = lightBlue;

    path.moveTo(100, 0);
    path.quadraticBezierTo(140, 90, 0, 170);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);

    path1.moveTo(300, 0);
    path1.quadraticBezierTo(70, 190, size.width, 250);
    path1.lineTo(size.width, 0);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
