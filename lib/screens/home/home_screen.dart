import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/home/components/highlights.dart';
import 'package:flutterportfolio/screens/home/components/home_banner.dart';
import 'package:flutterportfolio/screens/main/main_screen.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        Text(
          "My Project",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(defaultPadding),
            color: secondaryColor,
          ),
        ),
      ],
    );
  }
}
