import 'package:cyber_flutter/widgets/cyber_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_custom.dart';

class CyberKeyboardWrapper extends StatefulWidget {
  final bool isDialog;

  const CyberKeyboardWrapper({this.isDialog = false});

  @override
  _CyberKeyboardWrapperState createState() => _CyberKeyboardWrapperState();
}

class _CyberKeyboardWrapperState extends State<CyberKeyboardWrapper> {
  final letterNotifier = ValueNotifier<String>('');

  final FocusNode _focusNode = FocusNode();

  KeyboardActionsConfig _buildConfig(context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      actions: [
        KeyboardAction(
          focusNode: _focusNode,
          footerBuilder: (context) => CyberKeyboard(
            notifier: letterNotifier,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      isDialog: widget.isDialog,
      config: _buildConfig(context),
      child: Container(
        child: Center(
          child: KeyboardCustomInput<String>(
            focusNode: _focusNode,
            height: 40,
            notifier: letterNotifier,
            builder: (context, value, hasFocus) {
              return Container(
                color: Colors.white,
                width: 100,
                child: Text(value ?? 'No Letter selected'),
              );
            },
          ),
        ),
      ),
    );
  }
}
