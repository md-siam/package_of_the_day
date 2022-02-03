import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class TinderCard extends StatelessWidget {
  final color;
  const TinderCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(0, 10),
              blurRadius: 5.0,
              spreadRadius: 0,
            ),
          ],
        ),
      ),
    );
  }
}
