import 'package:flutter/material.dart';

class CyberScaffold extends StatelessWidget {
  final Widget topBar;
  final Widget body;

  CyberScaffold({this.topBar, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topBar != null ? topBar : Container(),
          body != null ? body : Container(),
        ],
      ),
    );
  }
}
