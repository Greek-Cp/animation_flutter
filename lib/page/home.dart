import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String? routeName = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width = 200;
  double margin = 0;
  Color color = Colors.white;
  Color colorText = Colors.black;
  bool isDarkModeEnabled = false;
  String textEnabled = "Enabled Dark Mode";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimatedContainer(
          width: double.infinity,
          duration: Duration(seconds: 100),
          color: color,
          child: Column(children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (!isDarkModeEnabled) {
                    color = Colors.black;
                    colorText = Colors.white;
                    textEnabled = "Disabled Dark Mode";
                    isDarkModeEnabled = true;
                  } else {
                    color = Colors.white;
                    colorText = Colors.black;
                    textEnabled = "Enabled Dark Mode";
                    isDarkModeEnabled = false;
                  }
                });
              },
            )
          ]),
        ),
      ),
    );
  }
}
