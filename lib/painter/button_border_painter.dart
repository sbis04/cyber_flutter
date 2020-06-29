import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ButtonBorderPainter extends CustomPainter {
  final bool isHovering;
  final bool isTapped;
  final Color borderColor;

  ButtonBorderPainter({
    this.isHovering = false,
    this.isTapped = false,
    this.borderColor,
  })  : assert(isHovering != null),
        assert(isTapped != null);

  @override
  void paint(Canvas canvas, Size size) {
    // print('PAINT CHANGE -> $isTapped');
    // width
    double width = size.width;
    // height
    double height = size.height;

    var idleBorderPaint = Paint()
      ..color = borderColor != null ? borderColor : CyberColor.accentBlue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var tappedBorderPaint = Paint()
      ..color = CyberColor.highlightBlue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, isTapped ? 5.0 : 0.0);

    double cutLength = width * 0.10;

    Offset startPoint = Offset(cutLength, 0);
    Offset horizontalEndTop = Offset(width, 0);
    Offset verticalCutDown = Offset(width, height - cutLength);
    Offset horizontalEndBottom = Offset(width - cutLength, height);
    Offset horizontalStart = Offset(cutLength, height);
    Offset verticalRoundedDown = Offset(0, height - cutLength);
    Offset verticalRoundedUp = Offset(0, cutLength);

    Offset joinHorizontalArc = Offset(width * 0.05, 0);
    Offset joinVerticalArc = Offset(0, width * 0.05);

    final startAngleBottom = math.pi / 2;
    final startAngleTop = math.pi;
    final sweepAngle = math.pi / 2;

    final useCenter = false;

    // OnTap
    canvas.drawLine(
        startPoint - joinHorizontalArc, horizontalEndTop, tappedBorderPaint);
    canvas.drawLine(horizontalEndTop, verticalCutDown, tappedBorderPaint);
    canvas.drawLine(verticalCutDown, horizontalEndBottom, tappedBorderPaint);
    canvas.drawLine(horizontalEndBottom, horizontalStart - joinHorizontalArc,
        tappedBorderPaint);
    canvas.drawArc(Rect.fromPoints(horizontalStart, verticalRoundedDown),
        startAngleBottom, sweepAngle, useCenter, tappedBorderPaint);
    canvas.drawLine(verticalRoundedDown + joinVerticalArc,
        verticalRoundedUp - joinVerticalArc, tappedBorderPaint);
    canvas.drawArc(Rect.fromPoints(verticalRoundedUp, startPoint),
        startAngleTop, sweepAngle, useCenter, tappedBorderPaint);

    // Idle
    canvas.drawLine(
        startPoint - joinHorizontalArc, horizontalEndTop, idleBorderPaint);
    canvas.drawLine(horizontalEndTop, verticalCutDown, idleBorderPaint);
    canvas.drawLine(verticalCutDown, horizontalEndBottom, idleBorderPaint);
    canvas.drawLine(horizontalEndBottom, horizontalStart - joinHorizontalArc,
        idleBorderPaint);
    canvas.drawArc(Rect.fromPoints(horizontalStart, verticalRoundedDown),
        startAngleBottom, sweepAngle, useCenter, idleBorderPaint);
    canvas.drawLine(verticalRoundedDown + joinVerticalArc,
        verticalRoundedUp - joinVerticalArc, idleBorderPaint);
    canvas.drawArc(Rect.fromPoints(verticalRoundedUp, startPoint),
        startAngleTop, sweepAngle, useCenter, idleBorderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
