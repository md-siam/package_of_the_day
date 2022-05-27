import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'views/home_page.dart';

class MyIntroSlider extends StatefulWidget {
  const MyIntroSlider({Key? key}) : super(key: key);

  @override
  State<MyIntroSlider> createState() => _MyIntroSliderState();
}

class _MyIntroSliderState extends State<MyIntroSlider> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(Slide(
      title: 'Hello Food!',
      description:
          'This easiest way to order food from your favorite restaurant.',
      pathImage: 'assets/images/intro_slider/hamburger.png',
    ));
    slides.add(Slide(
      title: 'Movie Tickets',
      description: 'Book movie tickets for your family and friends!',
      pathImage: 'assets/images/intro_slider/movie.png',
    ));
    slides.add(Slide(
      title: 'Great Discount!',
      description: 'Best discounts on every single service we offer',
      pathImage: 'assets/images/intro_slider/discount.png',
    ));
    slides.add(Slide(
      title: 'Hello Food!',
      description: 'Book tickets of any transportation and travel the world.',
      pathImage: 'assets/images/intro_slider/travel.png',
    ));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage.toString(),
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    currentSlide.description.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.deepPurple[700],
      renderSkipBtn: const Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      renderNextBtn: const Text(
        'Next',
        style: TextStyle(color: Colors.white),
      ),
      renderDoneBtn: const Text(
        'Done',
        style: TextStyle(color: Colors.white),
      ),
      colorDot: Colors.amber,
      sizeDot: 8.0,
      typeDotAnimation: DotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: renderListCustomTabs(),
      scrollPhysics: const BouncingScrollPhysics(),
      onDonePress: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
        );
      },
    );
  }
}
