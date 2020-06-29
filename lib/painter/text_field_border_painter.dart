import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TextFieldBorderPainter extends CustomPainter {
  final bool hasFocus;

  TextFieldBorderPainter({
    this.hasFocus = false,
  }) : assert(hasFocus != null);

  @override
  void paint(Canvas canvas, Size size) {
    // width
    double width = size.width;
    // height
    double height = size.height;

    var borderPaint = Paint()
      ..color = hasFocus ? CyberColor.accentBlue : CyberColor.darkBlue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double cutLength = height * 0.4;

    Offset startPoint = Offset(cutLength, 0);
    Offset horizontalEndTop = Offset(width, 0);
    Offset horizontalEndBottom = Offset(width, height);
    Offset horizontalStart = Offset(0, height);
    Offset verticalCutUp = Offset(0, cutLength);

    final startAngle = -math.pi / 2;
    final sweepAngle = math.pi;

    final useCenter = false;

    canvas.drawLine(startPoint, horizontalEndTop, borderPaint);
    canvas.drawArc(
        Rect.fromPoints(
          horizontalEndTop - Offset(height * 0.6, 0),
          horizontalEndBottom + Offset(height * 0.6, 0),
        ),
        startAngle,
        sweepAngle,
        useCenter,
        borderPaint);
    canvas.drawLine(horizontalEndBottom, horizontalStart, borderPaint);
    canvas.drawLine(horizontalStart, verticalCutUp, borderPaint);
    canvas.drawLine(verticalCutUp, startPoint, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
