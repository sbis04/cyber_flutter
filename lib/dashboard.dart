import 'package:cyber_flutter/credits.dart';
import 'package:cyber_flutter/widgets/cyber_button.dart';
import 'package:cyber_flutter/widgets/cyber_container.dart';
import 'package:cyber_flutter/widgets/cyber_scaffold.dart';
import 'package:flutter/material.dart';

import 'theme/colors.dart';
import 'widgets/cyber_bar.dart';
import 'widgets/cyber_text.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CyberScaffold(
      topBar: SafeArea(
        child: CyberBar(
          backgroundColor: Colors.blueGrey[900],
          title: CyberText(
            'Cyberverse',
            textStyle: TextStyle(
              fontSize: 25,
              color: CyberColor.highlightBlue,
            ),
          ),
        ),
      ),
      body: CyberContainer(
        child: Column(
          children: [
            Row(
              children: [
                CyberContainer(
                  borderColor: CyberColor.accentBlue,
                  child: Column(
                    children: [
                      CyberText('Photos'),
                      SizedBox(height: 20),
                      CyberButton(
                        borderColor: Colors.red,
                        onPressed: () {},
                        child: CyberText(
                          'Open',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                CyberContainer(
                  borderColor: CyberColor.lightGray,
                  child: Column(
                    children: [
                      CyberText('Gestures'),
                      SizedBox(height: 20),
                      CyberButton(
                        borderColor: Colors.red,
                        onPressed: () {},
                        child: CyberText(
                          'Apply',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                CyberContainer(
                  borderColor: CyberColor.dimGray,
                  child: Column(
                    children: [
                      CyberText('Voice'),
                      SizedBox(height: 20),
                      CyberButton(
                        borderColor: Colors.red,
                        onPressed: () {},
                        child: CyberText(
                          'Interpret',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                CyberContainer(
                  borderColor: CyberColor.lightGray,
                  child: Column(
                    children: [
                      CyberText('Code'),
                      SizedBox(height: 20),
                      CyberButton(
                        onPressed: () {},
                        child: CyberText(
                          'Apply',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                CyberContainer(
                  borderColor: CyberColor.lightGray,
                  child: Column(
                    children: [
                      CyberText('Movement'),
                      SizedBox(height: 20),
                      CyberButton(
                        borderColor: Colors.red,
                        onPressed: () {},
                        child: CyberText(
                          'Apply',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                CyberContainer(
                  borderColor: CyberColor.lightGray,
                  child: Column(
                    children: [
                      CyberText('Emotion'),
                      SizedBox(height: 20),
                      CyberButton(
                        borderColor: Colors.red,
                        onPressed: () {},
                        child: CyberText(
                          'Apply',
                          disableBorder: true,
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CyberButton(
                  borderColor: CyberColor.highlightBlue,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Credits(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CyberText(
                      'Apply ALl',
                      disableBorder: true,
                      textStyle: TextStyle(fontSize: 12.0),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
