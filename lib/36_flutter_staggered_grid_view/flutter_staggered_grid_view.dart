import 'package:flutter/material.dart';

import 'pages/aligned.dart';
import 'pages/masonry.dart';
import 'pages/quilted.dart';
import 'pages/staggered.dart';
import 'pages/staired.dart';
import 'pages/woven.dart';

class MyFlutterStaggeredGridView extends StatelessWidget {
  const MyFlutterStaggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered Grid View')),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              MenuEntry(
                title: 'Staggered',
                imageName: 'staggered',
                destination: StaggeredPage(),
              ),
              SizedBox(height: 10),
              MenuEntry(
                title: 'Masonry',
                imageName: 'masonry',
                destination: MasonryPage(),
              ),
              SizedBox(height: 10),
              MenuEntry(
                title: 'Quilted',
                imageName: 'quilted',
                destination: QuiltedPage(),
              ),
              SizedBox(height: 10),
              MenuEntry(
                title: 'Woven',
                imageName: 'woven',
                destination: WovenPage(),
              ),
              SizedBox(height: 10),
              MenuEntry(
                title: 'Staired',
                imageName: 'staired',
                destination: StairedPage(),
              ),
              SizedBox(height: 10),
              MenuEntry(
                title: 'Aligned',
                imageName: 'aligned',
                destination: AlignedPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    Key? key,
    required this.title,
    required this.imageName,
    required this.destination,
  }) : super(key: key);

  final String title;
  final Widget destination;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => destination,
            ),
          );
        },
        child: Stack(
          children: [
            Image.asset(
              'assets/images/staggered_grid_view/$imageName.png',
              fit: BoxFit.fill,
            ),
            Positioned.fill(
              child: FractionallySizedBox(
                heightFactor: 0.25,
                alignment: Alignment.bottomCenter,
                child: ColoredBox(
                  color: Colors.black.withOpacity(0.75),
                  child: Center(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
