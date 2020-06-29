import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class CyberKeyboard extends StatelessWidget
    with KeyboardCustomPanelMixin<String>
    implements PreferredSizeWidget {
  final ValueNotifier<String> notifier;
  static const double _kKeyboardHeight = 250;

  CyberKeyboard({this.notifier});

  final List characters = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    'Q',
    'W',
    'E',
    'R',
    'T',
    'Y',
    'U',
    'I',
    'O',
    'P',
    'A',
    'S',
    'D',
    'F',
    'G',
    'H',
    'J',
    'K',
    'L',
    'Z',
    'X',
    'C',
    'V',
    'B',
    'N',
    'M'
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final int keyWidth = (screenWidth / 10).floor();
    final int keyHeight = keyWidth;

    return Container(
      width: screenWidth,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < 10; i++)
                GestureDetector(
                  onTap: () {
                    updateValue(characters.elementAt(i));
                  },
                  child: Container(
                    width: keyWidth.toDouble(),
                    height: keyHeight.toDouble(),
                    child: Center(child: Text(characters.elementAt(i))),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 10; i < 20; i++)
                GestureDetector(
                  onTap: () {
                    updateValue(characters.elementAt(i));
                  },
                  child: Container(
                    width: keyWidth.toDouble(),
                    height: keyHeight.toDouble(),
                    child: Center(child: Text(characters.elementAt(i))),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 20; i < 29; i++)
                GestureDetector(
                  onTap: () {
                    updateValue(characters.elementAt(i));
                  },
                  child: Container(
                    width: keyWidth.toDouble(),
                    height: keyHeight.toDouble(),
                    child: Center(child: Text(characters.elementAt(i))),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 29; i < 35; i++)
                GestureDetector(
                  onTap: () {
                    updateValue(characters.elementAt(i));
                  },
                  child: Container(
                    width: keyWidth.toDouble(),
                    height: keyHeight.toDouble(),
                    child: Center(child: Text(characters.elementAt(i))),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_kKeyboardHeight);
}
