import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterportfolio/components/animated_progress_indicator.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/main/components/area_info_text.dart';
import 'package:flutterportfolio/screens/main/components/coding.dart';
import 'package:flutterportfolio/screens/main/components/knowledges.dart';
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
                Knowledge(),
                Divider(),
                SizedBox(width: defaultPadding / 2),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "DOWNLOAD CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                        SizedBox(width: defaultPadding / 2),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding / 2),
                  color: Color(0xff24242e),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/dribble.svg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
