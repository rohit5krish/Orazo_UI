import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';

class CustomCommonShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1890625, size.height * 0.1040000);
    path0.cubicTo(
        size.width * 0.3871875,
        size.height * -0.0460000,
        size.width * 0.7637500,
        size.height * -0.0110000,
        size.width * 0.8600000,
        size.height * 0.1015000);
    path0.cubicTo(
        size.width * 1.0028125,
        size.height * 0.2935000,
        size.width * 1.0056250,
        size.height * 0.7875000,
        size.width * 0.8843750,
        size.height * 0.8645000);
    path0.cubicTo(
        size.width * 0.7956250,
        size.height * 0.9505000,
        size.width * 0.4775000,
        size.height * 1.0425000,
        size.width * 0.2262500,
        size.height * 0.8285000);
    path0.cubicTo(
        size.width * 0.0665625,
        size.height * 0.6905000,
        size.width * -0.0350000,
        size.height * 0.2555000,
        size.width * 0.1890625,
        size.height * 0.1040000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
