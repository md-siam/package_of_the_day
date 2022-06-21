import 'package:flutter/material.dart';

import 'counter_bloc.dart';

class MyRxDart extends StatefulWidget {
  const MyRxDart({Key? key}) : super(key: key);

  @override
  State<MyRxDart> createState() => _MyRxDartState();
}

class _MyRxDartState extends State<MyRxDart> {
  final CounterBloc _counterBloc = CounterBloc(initialCount: 0);

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RxDart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Simple Counter App Using\nRxDart',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            StreamBuilder(
              stream: _counterBloc.counterObservable,
              builder: (context, AsyncSnapshot<int> snapshot) {
                return Text(
                  '${snapshot.data}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
              onPressed: _counterBloc.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          FloatingActionButton(
            onPressed: _counterBloc.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
