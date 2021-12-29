import 'package:flutter/material.dart';
import 'package:package_of_the_day/10_aurora_gradient/aurora.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package of the Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //home: const MyAvatarGlow(),
      //home: const MyGoogleFonts(),
      //home: const MyPullToRefresh(),
      //home: const MyPercentIndicator(),
      //home: const MyCarouselSlider(),
      //home: MySmoothPageIndicator(),
      //home: const MyFontAwesome(),
      //home: const MyAnimations(),
      //home: const MyNeonSign(),
      home: const MyAuroraGraduent(),
    );
  }
}
