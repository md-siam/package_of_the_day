import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyFlutterRatingBar extends StatefulWidget {
  const MyFlutterRatingBar({Key? key}) : super(key: key);

  @override
  State<MyFlutterRatingBar> createState() => _MyFlutterRatingBarState();
}

class _MyFlutterRatingBarState extends State<MyFlutterRatingBar> {
  double userRating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Rating Bar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating: $userRating',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            buildRating(),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => showRating(),
              child: const Text(
                'Show Dialog',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRating() => RatingBar.builder(
        initialRating: userRating, // keep tract of the rating
        minRating: 1,
        itemSize: 40,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        updateOnDrag: true,
        onRatingUpdate: (rating) {
          setState(() {
            userRating = rating;
          });
        },
      );

  /// This showRating method is for showing the [AlertDialog]
  /// rating
  ///
  void showRating() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Rate This App'),
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Please leave a star rating,',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 30),
                buildRating(),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'OK',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
      },
    );
  }
}
