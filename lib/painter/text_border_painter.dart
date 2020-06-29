import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TextBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // print(size);

    // width
    double width = size.width;
    // height
    double height = size.height;

    var borderPaint = Paint()
      ..color = CyberColor.accentBlue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var glowingBorderPaint = Paint()
      ..color = CyberColor.highlightBlue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5.0);

    Offset startPoint = Offset(0 - math.pi, 0);
    Offset horizontalEndPoint = Offset(width, 0);
    Offset verticalEndPoint = Offset(width, height);
    Offset horizontalCutPoint = Offset(height / 4, height);
    Offset verticalCutPoint = Offset(0 - math.pi, height / 1.5);

    // Offset arcExtendTop = Offset(height / 2, 0);
    // Offset arcExtendBottom = Offset(height / 2, height);

    Rect arcRect =
        Rect.fromLTRB(width - height / 2, 0, width + height / 2, height);

    final startAngle = -math.pi / 2;
    final sweepAngle = math.pi;

    final useCenter = false;

    // canvas.drawLine(startPoint, horizontalEndPoint, glowingBorderPaint);
    // canvas.drawArc(
    //     arcRect, startAngle, sweepAngle, useCenter, glowingBorderPaint);
    // canvas.drawLine(verticalEndPoint, horizontalCutPoint, glowingBorderPaint);
    // canvas.drawLine(horizontalCutPoint, verticalCutPoint, glowingBorderPaint);
    // canvas.drawLine(verticalCutPoint, startPoint, glowingBorderPaint);

    canvas.drawLine(startPoint, horizontalEndPoint, borderPaint);
    canvas.drawArc(arcRect, startAngle, sweepAngle, useCenter, borderPaint);
    canvas.drawLine(verticalEndPoint, horizontalCutPoint, borderPaint);
    canvas.drawLine(horizontalCutPoint, verticalCutPoint, borderPaint);
    canvas.drawLine(verticalCutPoint, startPoint, borderPaint);

    // canvas.drawRect(
    //   Rect.fromPoints(
    //     Offset(0, 0),
    //     Offset(size.width, size.height),
    //   ),
    //   borderPaint,
    // );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
