import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/animated_progress_indicator.dart';
import 'package:flutterportfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          label: "Dart",
          percentage: 0.8,
        ),
        AnimatedLinearProgressIndicator(
          label: "C",
          percentage: 0.85,
        ),
        AnimatedLinearProgressIndicator(
          label: "C++",
          percentage: 0.8,
        ),
        AnimatedLinearProgressIndicator(
          label: "CSS",
          percentage: 0.8,
        ),
        AnimatedLinearProgressIndicator(
          label: "JavaScript",
          percentage: 0.8,
        ),
      ],
    );
  }
}
