import 'package:flutter/material.dart';

class PageDetailImage extends StatelessWidget {
  static String? routeName = "/pageDetailImage";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(padding: EdgeInsets.all(100)),
          Hero(
            tag: 'duck',
            child: Image.asset("assets/duck.jpg"),
          ),
          Text(
            "waokewakoewakeoawoewaokeawokeawokawwaokewakoewakeoawoewaokeawokeawokawkoekoe \nawokewakoe",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
