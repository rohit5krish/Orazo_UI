import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';

class ProductShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1362500, size.height * 0.8960000);
    path0.cubicTo(
        size.width * -0.0468750,
        size.height * 0.6275000,
        size.width * -0.0318750,
        size.height * 0.3095000,
        size.width * 0.1412500,
        size.height * 0.1020000);
    path0.cubicTo(
        size.width * 0.2090625,
        size.height * -0.0035000,
        size.width * 0.5456250,
        size.height * 0.0340000,
        size.width * 0.6181250,
        size.height * 0.0910000);
    path0.cubicTo(
        size.width * 0.6893750,
        size.height * 0.1690000,
        size.width * 0.9375000,
        size.height * 0.5450000,
        size.width * 0.9065625,
        size.height * 0.5920000);
    path0.cubicTo(
        size.width * 0.9484375,
        size.height * 0.7750000,
        size.width * 0.7087500,
        size.height * 0.8670000,
        size.width * 0.5925000,
        size.height * 0.9370000);
    path0.cubicTo(
        size.width * 0.4681250,
        size.height * 0.9695000,
        size.width * 0.1846875,
        size.height * 0.9805000,
        size.width * 0.1362500,
        size.height * 0.8960000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
