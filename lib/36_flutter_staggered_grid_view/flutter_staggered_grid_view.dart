import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyFlutterStaggeredGridView extends StatelessWidget {
  MyFlutterStaggeredGridView({Key? key}) : super(key: key);
  final List _imageList = [
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
    'assets/images/parallax_animation/background_2.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_1.jpg',
    'assets/images/parallax_animation/background_3.jpg',
    'assets/images/parallax_animation/background_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Flutter Staggered Grid View')),
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            while (index < _imageList.length) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    '${_imageList[index]}',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
