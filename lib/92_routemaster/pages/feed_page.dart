import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Routemaster.of(context).push('profile/1'),
          child: const Text('Profile page'),
        ),
      ),
    );
  }
}
