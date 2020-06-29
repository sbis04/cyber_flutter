import 'package:cyber_flutter/theme/colors.dart';
import 'package:cyber_flutter/widgets/cyber_bar.dart';
import 'package:cyber_flutter/widgets/cyber_button.dart';
import 'package:cyber_flutter/widgets/cyber_container.dart';
import 'package:cyber_flutter/widgets/cyber_dialog_box.dart';
import 'package:cyber_flutter/widgets/cyber_scaffold.dart';
import 'package:cyber_flutter/widgets/cyber_text_field.dart';
import 'package:flutter/material.dart';

import 'widgets/cyber_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber Flutter',
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return CyberScaffold(
      topBar: SafeArea(
        child: CyberBar(
          backgroundColor: Colors.blueGrey[900],
          title: CyberText(
            'Cyber Flutter',
            textStyle: TextStyle(
              fontSize: 25,
              color: CyberColor.highlightBlue,
            ),
          ),
        ),
      ),
      body: CyberContainer(
        // height: 100,
        // width: double.maxFinite,
        disableBorder: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            CyberText('welcome to cyberverse'),
            SizedBox(height: 50),
            CyberTextField(
              width: width * 0.6,
              hintText: 'Enter your access username',
            ),
            SizedBox(height: 20),
            CyberTextField(
              width: width * 0.6,
              hintText: 'Enter your access pass code',
            ),
            SizedBox(height: 50),
            CyberButton(
              onPressed: () {
                print('Cyber Button Pressed');
                showDialog(
                  context: context,
                  builder: (context) {
                    return CyberDialog(
                      title: 'Warning',
                      description: 'Entering into Cyberverse',
                      buttons: [
                        CyberButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CyberText(
                              'Cancel',
                              disableBorder: true,
                              textStyle: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        CyberButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CyberText(
                              'Continue',
                              disableBorder: true,
                              textStyle: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CyberText(
                  'login',
                  disableBorder: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
