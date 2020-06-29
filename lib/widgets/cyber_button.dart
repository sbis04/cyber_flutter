import 'package:cyber_flutter/painter/button_border_painter.dart';
import 'package:flutter/material.dart';

class CyberButton extends StatefulWidget {
  final Widget child;
  final Function() onPressed;
  final Function onLongPressed;

  CyberButton({
    @required this.onPressed,
    this.onLongPressed,
    this.child,
  });

  @override
  _CyberButtonState createState() => _CyberButtonState();
}

class _CyberButtonState extends State<CyberButton> {
  bool _isTapped;
  bool _isHovering;

  @override
  void initState() {
    super.initState();
    _isTapped = false;
    _isHovering = false;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          ButtonBorderPainter(isHovering: _isHovering, isTapped: _isTapped),
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: (details) => setState(() {
          if (widget.onPressed != null) {
            _isTapped = true;
          }
        }),
        onTapUp: (details) => setState(() {
          _isTapped = false;
        }),
        onTapCancel: () => setState(() => _isTapped = false),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: widget.child,
        ),
      ),
    );
  }
}
