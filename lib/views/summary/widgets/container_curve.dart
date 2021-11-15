import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ContainerCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = LinearGradient(colors: [Color(0xffE7708A), Colors.white10])
          .createShader(Rect.fromCircle(center: Offset(0.7, 0.2), radius: 0));

    // paint.style = PaintingStyle.fill;
    var path = Path();
    var paint1 = Paint()
      ..shader = LinearGradient(colors: [
        Color(0xff7A87F1),
        Colors.white10,
      ]).createShader(Rect.fromCircle(center: Offset(0.7, 0.2), radius: 0));

    var path1 = Path();

    path.moveTo(0, 110);
    // path.lineTo(0, 80);

    path.quadraticBezierTo(340, 120, 0, 400);
    path.lineTo(0, 0);
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, paint);

    path1.moveTo(200, 0);
    path1.quadraticBezierTo(130, 110, size.width, 150);
    path1.lineTo(size.width, 0);
    // canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
