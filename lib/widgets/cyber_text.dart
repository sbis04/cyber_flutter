import 'package:cyber_flutter/painter/text_border_painter.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CyberText extends Text {
  final String text;
  final TextStyle textStyle;
  final bool disableBorder;
  CyberText(
    this.text, {
    this.textStyle,
    this.disableBorder = false,
  })  : assert(disableBorder != null),
        super(text);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          child: CustomPaint(
            foregroundPainter: disableBorder ? null : TextBorderPainter(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6.0,
                bottom: 8.0,
                left: 8.0 + math.pi * 2,
                right: 2.0 + math.pi,
              ),
              child: Text(
                text.toUpperCase(),
                textWidthBasis: TextWidthBasis.longestLine,
                style: textStyle != null
                    ? textStyle.copyWith(fontFamily: 'Presicav')
                    : TextStyle(
                        fontFamily: 'Presicav',
                        fontSize: 16,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
