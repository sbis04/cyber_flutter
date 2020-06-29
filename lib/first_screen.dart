import 'package:cyber_flutter/widgets/cyber_keyboard_wrapper.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keyboard Actions Sample"),
      ),
      body: CyberKeyboardWrapper(),
    );
  }
}
