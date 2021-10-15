import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/animated_progress_indicator.dart';
import 'package:flutterportfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
        ),
      ],
    );
  }
}
