import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double hight;
  final ShapeBorder shapeBorder;

   // ignore: use_key_in_widget_constructors
   const ShimmerWidget.rectangular({
    Key? key,
    this.width = double.infinity,
    required this.hight,
  }) : shapeBorder = const RoundedRectangleBorder();

  const ShimmerWidget.circular({
    Key? key,
    required this.width,
    required this.hight,
    this.shapeBorder = const CircleBorder(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        width: width,
        height: hight,
        decoration: ShapeDecoration(
          color: Colors.grey[400],
          shape: shapeBorder,
        ),
      ),
    );
  }
}
