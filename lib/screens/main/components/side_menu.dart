import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/animated_progress_indicator.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/main/components/area_info_text.dart';
import 'package:flutterportfolio/screens/main/components/coding.dart';
import 'package:flutterportfolio/screens/main/components/my_info.dart';
import 'package:flutterportfolio/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: "Residence",
                  text: "India",
                ),
                AreaInfoText(
                  title: "City",
                  text: "Ranchi",
                ),
                AreaInfoText(
                  title: "Age",
                  text: "23",
                ),
                Skills(),
                SizedBox(height: defaultPadding),
                Coding(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
