import 'package:cyber_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class CyberBar extends StatelessWidget {
  final Color backgroundColor;
  final Text title;
  final Widget leading;
  final Widget trailing;

  CyberBar({
    this.backgroundColor = CyberColor.darkBlue,
    this.title,
    this.leading,
    this.trailing,
  }) : assert(backgroundColor != null);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      height: screenSize.height * 0.10,
      width: screenSize.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading != null ? Expanded(child: leading) : Container(),
          title != null ? title : Container(),
          trailing != null ? Expanded(child: trailing) : Container(),
        ],
      ),
    );
  }
}
