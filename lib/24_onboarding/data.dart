import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

final onboardingPagesList = [
  PageModel(
    widget: DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        border: Border.all(
          width: 0.0,
          color: background,
        ),
      ),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 90.0,
              ),
              child: Image.asset(
                'assets/images/onboarding/facebook.png',
                color: pageImageColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SECURED BACKUP',
                  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
  PageModel(
    widget: DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        border: Border.all(
          width: 0.0,
          color: background,
        ),
      ),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 90.0,
              ),
              child: Image.asset(
                'assets/images/onboarding/twitter.png',
                color: pageImageColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CHANGE AND RISE',
                  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Give others access to any file or folders you choose',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
  PageModel(
    widget: DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        border: Border.all(
          width: 0.0,
          color: background,
        ),
      ),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 90.0,
              ),
              child: Image.asset(
                'assets/images/onboarding/instagram.png',
                color: pageImageColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'EASY ACCESS',
                  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reach your files anytime from any devices anywhere',
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
];
