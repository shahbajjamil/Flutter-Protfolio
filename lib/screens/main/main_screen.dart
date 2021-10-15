import 'package:flutter/material.dart';
import 'package:flutterportfolio/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Drawer(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.23,
                          child: Container(
                            color: const Color(0xff242430),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage("assets/images/pool.jpg"),
                                ),
                                Text(
                                  "Shahbaj Jamil",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                  "Flutter Developer || Web development\nKeep learning",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
