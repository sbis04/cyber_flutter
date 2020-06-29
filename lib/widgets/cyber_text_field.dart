import 'package:cyber_flutter/painter/text_field_border_painter.dart';
import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class CyberTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double width;
  final bool isObscure;

  CyberTextField({
    this.controller,
    this.hintText,
    this.height,
    this.width,
    this.isObscure = false,
  });

  @override
  _CyberTextFieldState createState() => _CyberTextFieldState();
}

class _CyberTextFieldState extends State<CyberTextField> {
  bool _isFocused;
  FocusNode _focus = new FocusNode();

  @override
  void initState() {
    super.initState();
    _isFocused = false;
    _focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focus.hasFocus;
      print('HAS FOCUS: ${_focus.hasFocus}');
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return CustomPaint(
      painter: TextFieldBorderPainter(hasFocus: _isFocused),
      child: SizedBox(
        height: widget.height != null ? widget.height : null,
        width: widget.width != null ? widget.width : screenWidth * 0.30,
        child: TextField(
          obscureText: widget.isObscure,
          focusNode: _focus,
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 16.0),
            border: InputBorder.none,
            hintText: widget.hintText != null ? widget.hintText : '',
            hintStyle: TextStyle(
              fontFamily: 'Presicav',
              fontSize: 12,
              color: CyberColor.lightGray,
            ),
          ),
          cursorColor: CyberColor.accentBlue,
          style: TextStyle(
            fontFamily: 'Presicav',
            color: CyberColor.highlightBlue,
          ),
        ),
      ),
    );
  }
}
