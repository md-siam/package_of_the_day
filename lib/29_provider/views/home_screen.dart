import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Count(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().restart();
            },
            tooltip: 'Restart',
            child: const Icon(Icons.restart_alt),
          ),
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

/// As we have [context.watch] inside of our widget,
/// it will rebuild the entire widget.
/// Therefore we can create a standalone widget like the one below.
class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      style: const TextStyle(fontSize: 40),
    );
  }
}
