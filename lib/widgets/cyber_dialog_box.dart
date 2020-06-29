import 'package:cyber_flutter/painter/dialog_border_painter.dart';
import 'package:cyber_flutter/theme/colors.dart';
import 'package:cyber_flutter/widgets/cyber_text.dart';
import 'package:flutter/material.dart';

class CyberDialog extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> buttons;

  CyberDialog({this.title, this.description, this.buttons});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: CustomPaint(
        painter: DialogBorderPainter(),
        child: Container(
          // color: CyberColor.darkBlue,
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 16.0, left: 8.0, right: 8.0, top: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(
                          Icons.warning,
                          size: 35,
                          color: Colors.redAccent,
                        ),
                      ),
                      CyberText(
                        title,
                        disableBorder: true,
                        textStyle: TextStyle(
                            color: CyberColor.accentBlue, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    description,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: buttons,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
