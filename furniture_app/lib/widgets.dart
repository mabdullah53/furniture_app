
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 3;
    final double strokeWidth = 2.2;
    final double arcAngle = pi / 1; // 90 degrees

    final Paint paint = Paint()
      ..color = Colors.orange.shade200.withOpacity(0.4)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      1,
      arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class ArcPainterr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 3;
    final double strokeWidth = 2.2;
    final double arcAngle = pi / 1; // 90 degrees

    final Paint paint = Paint()
      ..color = Colors.teal.shade500.withOpacity(0.4)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      5,
      arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class ArcPainterrr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal.shade500.withOpacity(0.2);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 200, paint);
    //final double radius = size.width / 3;
    //  final double strokeWidth = 2.2;
    //  final double arcAngle = pi / 1; // 90 degrees

    //   final Paint paint = Paint()
    //     ..color = Colors.teal.shade500.withOpacity(0.4)
    //     ..strokeWidth = strokeWidth
    //     ..style = PaintingStyle.stroke;
    //
    //   canvas.drawArc(
    //     Rect.fromCircle(center: Offset(radius, radius), radius: radius),
    //     5,
    //     arcAngle,
    //     false,
    //     paint,
    //   );
    // }
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


// Positioned(
// top: 13,
// // bottom: 0,
// // right: 71,
// left: 286,
// child: CustomPaint(
// size: Size(200, 100), // define canvas size
// painter: ArcPainter(),
// ),
// //