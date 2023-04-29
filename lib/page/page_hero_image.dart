import 'package:animation_flutter/page/page_hero_detail.dart';
import 'package:flutter/material.dart';

class PageImage extends StatefulWidget {
  static String routeName = "/PageHero";

  @override
  State<PageImage> createState() => _PageImageState();
}

class _PageImageState extends State<PageImage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(PageDetailImage.routeName.toString());
          },
          child: Hero(
            tag: 'duck',
            child: Image.asset(
              "assets/duck.jpg",
              width: 120,
              height: 120,
            ),
          ),
        )
      ]),
    );
  }
}
