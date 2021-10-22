import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/animation_counter.dart';
import 'package:flutterportfolio/constants.dart';
import 'package:flutterportfolio/screens/home/components/high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "K+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
        ],
      ),
    );
  }
}

