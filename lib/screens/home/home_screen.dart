import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/main/main_screen.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/bg.jpeg",
                fit: BoxFit.cover,
              ),
              Container(color: darkColor.withOpacity(0.66)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Discover my amazing\nArt Space!",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
