import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class MyOnboarding extends StatelessWidget {
  MyOnboarding({Key? key}) : super(key: key);

  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 45.0),
            child: Image.asset(
              'assets/images/onboarding/facebook.png',
              color: pageImageColor,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'SECURED BACKUP',
              style: pageTitleStyle,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Keep your files in closed safe so you can\'t lose them',
              style: pageInfoStyle,
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset(
            'assets/images/onboarding/twitter.png',
            color: pageImageColor,
          ),
          const SizedBox(height: 30),
          const Text('CHANGE AND RISE', style: pageTitleStyle),
          const Text(
            'Give others access to any file or folder you choose',
            style: pageInfoStyle,
          )
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset('assets/images/onboarding/instagram.png',
              color: pageImageColor),
          const SizedBox(height: 30),
          const Text('EASY ACCESS', style: pageTitleStyle),
          const Text(
            'Reach your files anytime from any devices anywhere',
            style: pageInfoStyle,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Container()),
              (route) => false,
            );
          },
        ),
        pages: onboardingPagesList,
        isSkippable: false,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.polygon(
            polygonDesign: PolygonDesign(
                polygon: DesignType.polygon_square, polygonSpacer: 13.0),
          ),
        ),
      ),
    );
  }
}
