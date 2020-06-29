import 'package:cyber_flutter/painter/container_border_painter.dart';
import 'package:flutter/material.dart';

class CyberContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height;
  final double width;
  final bool disableBorder;

  CyberContainer({
    this.child,
    this.color,
    this.height,
    this.width,
    this.disableBorder = false,
  }) : assert(disableBorder != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: height != null && width != null ? 0 : 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomPaint(
          foregroundPainter: disableBorder ? null : ContainerBorderPainter(),
          child: Container(
            color: color,
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
