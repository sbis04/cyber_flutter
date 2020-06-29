import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class ContainerBorderPainter extends CustomPainter {
  final Color borderColor;

  ContainerBorderPainter({this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    // print(size);

    // width
    double width = size.width;
    // height
    double height = size.height;

    var borderPaint = Paint()
      ..color = borderColor != null ? borderColor : CyberColor.dimGray
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    if (width != 0 && height != 0) {
      double cutLength = width * 0.05;

      Offset startPoint = Offset(cutLength, 0);
      Offset horizontalTopEnd = Offset(width, 0);
      Offset verticalCutDown = Offset(width, height - cutLength);
      Offset horizontalBottomEnd = Offset(width - cutLength, height);
      Offset horizontalBottomStart = Offset(0, height);
      Offset verticalCutUp = Offset(0, cutLength);

      canvas.drawLine(startPoint, horizontalTopEnd, borderPaint);
      canvas.drawLine(horizontalTopEnd, verticalCutDown, borderPaint);
      canvas.drawLine(verticalCutDown, horizontalBottomEnd, borderPaint);
      canvas.drawLine(horizontalBottomEnd, horizontalBottomStart, borderPaint);
      canvas.drawLine(horizontalBottomStart, verticalCutUp, borderPaint);
      canvas.drawLine(verticalCutUp, startPoint, borderPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
