// Copyright (c) 2022, Md. Siam
// http://mdsiam.xyz/
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://choosealicense.com/licenses/mit/

import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package of the Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: false,
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
      //home: const MyAuroraGradient(),
      //home: const MyCardSwiper(),
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
      //home: const MyOnboarding(),
      //home: const MyFlutterNeumorphic(),
      //home: const MyMathExpressions(),
      //home: const MyClayContainers(),
      //home: const MyDayNightSwitcher(),
      //home: const MyProvider(),
      //home: const MyFeatherIcons(),
      //home: const MySimpleGradientText(),
      //home: const MyImagePicker(),
      //home: const MyConvexBottomBar(),
      //home: const MyIntroSlider(),
      //home: const MyIcofontFlutter(),
      //home: const MyFlutterStaggeredGridView(),
      //home: const MyShimmer(),
      //home: const MyLottie(),
      //home: const MySharedPreferences(),
      //home: const MyAutoSizeText(),
      //home: const MyDeviceInfoPlus(),
      //home: const MyGeolocator(),
      //home: const MyGlassKit(),
      //home: const MyUrlLauncher(),
      //home: const MyWebviewFlutter(),
      //home: const MyResponsiveSizer(),      // run on `Chrome`
      //home: const MyVideoPlayer(),
      //home: const MyResponsiveFramework(),   // run on `Chrome`
      //home: const MyTimelines(),
      //home: const MyJustAudio(),
      //home: const MyPersistentBottomNavBar(),
      //home: const MyEquatable(),
      //home: const MyWebScraper(),
      //home: const MyIntroductionScreen(),
      //home: const MyAnimatedTextKit(),
      //home: const MyHorizontalDataTable(),
      //home: const MyConfetti(),
      //home: const MyChewie(),
      //home: const MyGetIt(),
      //home: const MyOverlaySupport(),
      //home: const MyConnectivityPlus(),
      //home: const MyFlutterHooks(),
      //home: const MyPathProvider(),
      //home: const MyYoutubePlayerFlutter(),
      //home: const MyYoutubePlayerIframe(),
      //home: const MyFlutterSlidable(),
      //home: const MyJSONAnnotation(),
      //home: const MyDio(),
      //home: const MyGallerySaver(),
      //home: const MyAnimSearchBar(),
      //home: const MyFilePicker(),
      //home: const MySharePlus(),
      //home: const MyInfiniteScrollPagination(),
      //home: const MyMarquee(),
      //home: const MyCachedNetworkImage(),
      //home: const MyFlutterToast(),
      //home: const MyCrypto(),
      //home: const MyBottomNavyBar(),
      //home: const MySlideCountdown(),
      //home: const MyDateFormat(),
      //home: const MyFlutterRatingBar(),
      //home: const MyPinCodeFields(),
      //home: const MyUUID(),
      //home: const MyRxDart(),
      //home: const MyFlutterLocalNotifications(),
      //home: const MyFlutterNativeTimezone(),
      //home: const MyFaker(),
      //home: const MyDayNightSwitch(),
      //home: const MyPixelPerfect(),
      //home: const MyAnimatedButton(),
      //home: const MyToggleSwitch(),
      home: const MyRouteMaster(),
    );
  }
}
