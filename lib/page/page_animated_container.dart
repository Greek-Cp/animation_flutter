import 'package:flutter/material.dart';

class PageAnimatedContainer extends StatefulWidget {
  static String? routeName = "/PageAnimatedContainer";

  @override
  State<PageAnimatedContainer> createState() => _PageAnimatedContainerState();
}

class _PageAnimatedContainerState extends State<PageAnimatedContainer> {
  double? width = 100;
  double? height = 200;
  Color? colorsContainer = Colors.amberAccent;
  bool state = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
              color: colorsContainer,
              width: width,
              height: height,
              duration: Duration(seconds: 1),
              child: Column(
                children: [],
              )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (state) {
                    width = 200;
                    height = 300;
                    state = false;
                    colorsContainer = Colors.pink;
                  } else {
                    width = 500;
                    height = 200;
                    state = true;
                    colorsContainer = Colors.indigo;
                  }
                });
              },
              child: Text("Click On Me"))
        ],
      ),
    );
  }
}
