import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'model/model.dart';

class MySwiperBanner extends StatelessWidget {
  const MySwiperBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Flutter Swiper'),
      ),
      body: SizedBox(
        height: 200,
        child: Swiper(
          itemCount: sliderItems.length,
          autoplay: true,
          autoplayDelay: 5000,
          curve: Curves.easeIn,
          layout: SwiperLayout.DEFAULT,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: BannerImageModel(
                sliderItems[index],
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
              margin: const EdgeInsets.all(20),
            );
          },
        ),
      ),
    );
  }
}
