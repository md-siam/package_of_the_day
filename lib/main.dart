import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package of the Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //home: const MyAvatarGlow(),
      //home: const MyGoogleFonts(),
      //home: const MyPullToRefresh(),
      //home: const MyPercentIndicator(),
      //home: const MyCarouselSlider(),
      //home: MySmoothPageIndicator(),
      //home: const MyFontAwesome(),
      //home: const MyAnimations(),
      //home: const MyNeonSign(),
      //home: const MyAuroraGradient(),
      //home: const MySwiperBanner(),
      //home: const MyBlurhash(),
      //home: const MyFlutterSVG(),
      //home: const MyCustomCliper(),
      //home: const MyFlutterTTS(),
      //home: const MyFlutterHighlight(),
      //home: const MySyncfusionFlutterCharts(),
      //home: const MyRflutterAlert(),
      //home: const MySettingsUi(),
      //home: const MySpinkit(),
      //home: const MyAudioplayer(),
      home: MyGoRouter(),
    );
  }
}
