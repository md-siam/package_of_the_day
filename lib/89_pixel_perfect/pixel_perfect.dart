import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class MyPixelPerfect extends StatelessWidget {
  const MyPixelPerfect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String iconPath = 'assets/images/pixel_perfect/icons/';
    const String imagePath = 'assets/images/pixel_perfect/images/';

    return PixelPerfect(
      assetPath: '${imagePath}profile_light.jpg',
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'pieroborgo',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('${iconPath}new-video.png'),
                      constraints: BoxConstraints.tight(const Size(21.5, 21.5)),
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(width: 30.5),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('${iconPath}menu.png'),
                      constraints: BoxConstraints.tight(const Size(21.5, 21.5)),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 8.5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 43,
                        child: Image.asset('${imagePath}avatar.png'),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            '210',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'post',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 38),
                      const Column(
                        children: [
                          Text(
                            '600',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'follower',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        children: [
                          Text(
                            '500',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'following',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
