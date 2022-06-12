// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../common.dart';

class StaggeredPage extends StatelessWidget {
  const StaggeredPage({
    Key? key,
  }) : super(key: key);

  static const tiles = [
    GridTile(2, 2),
    GridTile(2, 1),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(2, 2),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(3, 1),
    GridTile(1, 1),
    GridTile(4, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered')),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            ...tiles.mapIndexed((index, tile) {
              return StaggeredGridTile.count(
                crossAxisCellCount: tile.crossAxisCount,
                mainAxisCellCount: tile.mainAxisCount,
                child: ImageTile(
                  index: index,
                  width: tile.crossAxisCount * 100,
                  height: tile.mainAxisCount * 100,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class GridTile {
  const GridTile(this.crossAxisCount, this.mainAxisCount);
  final int crossAxisCount;
  final int mainAxisCount;
}
