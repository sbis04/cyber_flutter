import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class DialogBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // width
    double width = size.width;
    // height
    double height = size.height;

    var borderPaint = Paint()
      ..color = CyberColor.highlightBlue
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double cutLength = width * 0.10;

    Offset startPoint = Offset(0, 0);
    Offset horizontalEndTop = Offset(width, 0);
    Offset verticalCutDown = Offset(width, height - cutLength);
    Offset horizontalEndBottom = Offset(width - cutLength, height);
    Offset horizontalStart = Offset(0, height);

    canvas.drawLine(startPoint, horizontalEndTop, borderPaint);
    canvas.drawLine(horizontalEndTop, verticalCutDown, borderPaint);
    canvas.drawLine(verticalCutDown, horizontalEndBottom, borderPaint);
    canvas.drawLine(horizontalEndBottom, horizontalStart, borderPaint);
    canvas.drawLine(horizontalStart, startPoint, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
