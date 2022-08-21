import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';

class CircleShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 242, 27, 53)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1906250, size.height * 0.1165000);
    path0.cubicTo(
        size.width * 0.3887500,
        size.height * -0.0335000,
        size.width * 0.7090625,
        size.height * 0.0090000,
        size.width * 0.8053125,
        size.height * 0.1215000);
    path0.cubicTo(
        size.width * 0.9481250,
        size.height * 0.3135000,
        size.width * 0.9025000,
        size.height * 0.8300000,
        size.width * 0.7812500,
        size.height * 0.9070000);
    path0.cubicTo(
        size.width * 0.6878125,
        size.height * 0.9905000,
        size.width * 0.4228125,
        size.height * 1.0625000,
        size.width * 0.1715625,
        size.height * 0.8485000);
    path0.cubicTo(
        size.width * 0.0493750,
        size.height * 0.6980000,
        size.width * 0.0493750,
        size.height * 0.2880000,
        size.width * 0.1906250,
        size.height * 0.1165000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
