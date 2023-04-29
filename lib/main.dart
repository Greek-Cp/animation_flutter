import 'package:animation_flutter/page/home.dart';
import 'package:animation_flutter/page/page_animated_container.dart';
import 'package:animation_flutter/page/page_hero_detail.dart';
import 'package:animation_flutter/page/page_hero_image.dart';
import 'package:animation_flutter/page/tween_animation.dart';
import 'package:animation_flutter/page/tween_animation_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      initialRoute: PageImage.routeName,
      routes: {
        Home.routeName.toString(): (context) => Home(),
        MyAnimatedWidget.routeName.toString(): (context) => MyAnimatedWidget(),
        PageAnimatedContainer.routeName.toString(): (context) =>
            PageAnimatedContainer(),
        TweenAnimationLearnPage.routeName.toString(): (context) =>
            TweenAnimationLearnPage(),
        PageImage.routeName.toString(): (context) => PageImage(),
        PageDetailImage.routeName.toString(): (context) => PageDetailImage()
      },
    );
  }
}
