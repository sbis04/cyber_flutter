import 'package:cyber_flutter/theme/colors.dart';
import 'package:cyber_flutter/widgets/cyber_bar.dart';
import 'package:cyber_flutter/widgets/cyber_container.dart';
import 'package:cyber_flutter/widgets/cyber_scaffold.dart';
import 'package:cyber_flutter/widgets/cyber_text.dart';
import 'package:flutter/material.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CyberScaffold(
      topBar: SafeArea(
        child: CyberBar(
          backgroundColor: Colors.blueGrey[900],
          title: CyberText(
            'Credits',
            textStyle: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ),
          ),
        ),
      ),
      body: CyberContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CyberText(
                'GitHub Link of the project',
                textStyle: TextStyle(color: Colors.amber, fontSize: 16),
                disableBorder: true,
              ),
              SizedBox(height: 20),
              CyberText(
                'https://github.com/sbis04/cyber_flutter',
                textStyle:
                    TextStyle(fontSize: 16, color: CyberColor.highlightBlue),
              ),
              SizedBox(height: 30),
              CyberText(
                'Please vote for this project',
                textStyle: TextStyle(fontSize: 18),
                disableBorder: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
