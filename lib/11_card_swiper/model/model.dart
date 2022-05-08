import 'package:flutter/material.dart';

final List<String> sliderItems = [
  elevenEleven,
  blackFriday,
  cyberMonday,
  xmas,
];
String elevenEleven = 'assets/images/banner/11-11.jpg';
String blackFriday = 'assets/images/banner/black_friday.jpg';
String cyberMonday = 'assets/images/banner/cyber_monday.jpg';
String xmas = 'assets/images/banner/xmas.jpg';

class BannerImageModel extends StatelessWidget {
  final String image;
  final BoxFit fit;
  final double width, height;
  const BannerImageModel(this.image,
      {Key? key, required this.fit, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
