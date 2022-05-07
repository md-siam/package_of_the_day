// Copyright (c) 2022, Md. Siam
// http://mdsiam.xyz/
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://choosealicense.com/licenses/mit/

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
      //home: MyGoRouter(),
      //home: const MyHTTP(),
      //home: MyOnboarding(),
      //home: const MyFlutterNeumorphic(),
      //home: const MyMathExpressions(),
      //home: const MyClayContainers(),
      //home: const MyDayNightSwitcher(),
      //home: const MyProvider(),
      //home: const MyFeatherIcons(),
      //home: const MyFlutterSwipable(),
      //home: const MyImagePicker(),
      //home: const MyConvexBottomBar(),
      //home: const MyIntroSlider(),
      //home: MyParallaxAnimation(),
      //home: const MyFlutterStaggeredGridView(),
      //home: const MyShimmer(),
      //home: const MyLottie(),
      //home: const MySharedPreferences(),
      //home: const MyDayNightTimePicker(),
      //home: const MyDeviceInfoPlus(),
      //home: const MyGeolocator(),
      //home: const MyGlassKit(),
      //home: const MyUrlLauncher(),
      //home: MyWebviewFlutter(),
      //home: const MyResponsiveSizer(),      // run on `Chrome`
      //home: const MyVideoPlayer(),
      //home: const MyResponsiveFramework(),   // run on `Chrome`
      //home: const MyTimelines(),
      //home: const MyJustAudio(),
      //home: const MyPersistentBottomNavBar(),
      //home: const MyEquatable(),
      //home: const MyWebScraper(),
      //home: const MyIntroductionScreen(),
      //home: const MyCubeTransitionPlus(),
      //home: const MyHorizontalDataTable(),
      //home: const MyConfetti(),
      //home: const MyChewie(),
      //home: const MyGetIt(),
      //home: const MyOverlaySupport(),
      //home: const MyConnectivityPlus(),
      //home: const MyFlutterHooks(),
      //home: const MyPathProvider(),
      //home: const MyYoutubePlayerIframe(),
      home: const MyFlutterSlidable(),
    );
  }
}
