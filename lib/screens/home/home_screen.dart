import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/models/Project.dart';
import 'package:flutterportfolio/models/Recommendation.dart';
import 'package:flutterportfolio/screens/home/components/highlights.dart';
import 'package:flutterportfolio/screens/home/components/home_banner.dart';
import 'package:flutterportfolio/screens/home/components/my_project.dart';
import 'package:flutterportfolio/screens/home/components/recommendation.dart';
import 'package:flutterportfolio/screens/main/main_screen.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
