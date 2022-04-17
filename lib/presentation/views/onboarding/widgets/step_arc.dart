import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepArc extends StatelessWidget {
  final double diameter;
  final int index;

  const StepArc({
    Key? key,
    this.diameter = 64,
    this.index = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcPainter(index),
      size: Size(diameter, diameter),
    );
  }
}

class ArcPainter extends CustomPainter {
  final int index;

  ArcPainter(this.index);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    final path = Path();

    if (index == 0) {
      path.arcTo(
        Rect.fromCenter(
          center: Offset(size.height * .46, (size.width * .47) + 10),
          height: size.height,
          width: size.width,
        ),
        -math.pi,
        -math.pi,
        false,
      );
      path.moveTo(-3.w, size.height * .62);
      path.lineTo(size.width * .97, size.height * .62);
    } else {
      path.arcTo(
        Rect.fromCenter(
          center: Offset(size.height * .46, (size.width * .47) + 10),
          height: size.height,
          width: size.width,
        ),
        -math.pi * .47,
        -math.pi * 1.5,
        false,
      );
      path.moveTo(size.width / 2, 8.h);
      path.lineTo(size.width / 2, 24.h);
      path.moveTo(size.width * .95, size.height * .68);
      path.lineTo(30.w, size.height * .68);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
