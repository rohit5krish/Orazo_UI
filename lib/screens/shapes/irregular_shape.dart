import 'package:flutter/material.dart';

class IrregularShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 242, 27, 53)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1750000, size.height * 0.0490000);
    path0.cubicTo(
        size.width * 0.4262500,
        size.height * 0.1165000,
        size.width * 0.6903125,
        size.height * 0.0965000,
        size.width * 0.8162500,
        size.height * 0.1590000);
    path0.cubicTo(
        size.width * 0.9590625,
        size.height * 0.3510000,
        size.width * 0.9196875,
        size.height * 0.5975000,
        size.width * 0.7421875,
        size.height * 0.7495000);
    path0.cubicTo(
        size.width * 0.6815625,
        size.height * 0.8280000,
        size.width * 0.4228125,
        size.height * 1.0625000,
        size.width * 0.1715625,
        size.height * 0.8485000);
    path0.cubicTo(
        size.width * 0.0493750,
        size.height * 0.6980000,
        size.width * -0.0115625,
        size.height * -0.0270000,
        size.width * 0.1750000,
        size.height * 0.0490000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
