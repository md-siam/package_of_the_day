import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class MyCarouselSlider extends StatelessWidget {
  const MyCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: CarouselSlider(
        slideTransform: const CubeTransform(),
        slideIndicator: CircularSlideIndicator(
          padding: const EdgeInsets.only(bottom: 30),
          currentIndicatorColor: Colors.white,
        ),
        unlimitedMode: true,
        children: [
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
