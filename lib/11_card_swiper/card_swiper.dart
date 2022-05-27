import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'model/model.dart';

class MyCardSwiper extends StatelessWidget {
  const MyCardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Card Swiper')),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: sliderItems.length,
              autoplay: true,
              autoplayDelay: 5000,
              curve: Curves.easeIn,
              layout: SwiperLayout.DEFAULT,
              pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(),
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  semanticContainer: true,
                  elevation: 10,
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 30,
                    left: 10,
                    right: 10,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BannerImageModel(
                    sliderItems[index],
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
