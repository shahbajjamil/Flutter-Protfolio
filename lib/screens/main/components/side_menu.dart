import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/animated_progress_indicator.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/main/components/area_info_text.dart';
import 'package:flutterportfolio/screens/main/components/my_info.dart';

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
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.75,
                        label: "Flutter",
                      ),
                    ),
                    SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.85,
                        label: "HTML",
                      ),
                    ),
                    SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.65,
                        label: "Firebase",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
