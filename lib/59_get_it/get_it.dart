import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app_model.dart';

// This is our global ServiceLocator
GetIt getIt = GetIt.instance;

class MyGetIt extends StatelessWidget {
  const MyGetIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// place it inside the `main()` function
    ///
    getIt.registerSingleton<AppModel>(AppModelImplementation(),
        signalsReady: true);

    return MaterialApp(
      title: 'Get It',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyGetItHomePage(),
    );
  }
}

class MyGetItHomePage extends StatefulWidget {
  const MyGetItHomePage({Key? key}) : super(key: key);

  @override
  State<MyGetItHomePage> createState() => _MyGetItHomePageState();
}

class _MyGetItHomePageState extends State<MyGetItHomePage> {
  @override
  void initState() {
    // Access the instance of the registered AppModel
    // As we don't know for sure if AppModel is already ready we use getAsync
    getIt
        .isReady<AppModel>()
        .then((_) => getIt<AppModel>().addListener(update));
    // Alternative
    // getIt.getAsync<AppModel>().addListener(update);

    super.initState();
  }

  @override
  void dispose() {
    getIt<AppModel>().removeListener(update);
    super.dispose();
  }

  void update() => setState(() => {});

  @override
  Widget build(BuildContext context) {
    debugPrint('build method called once');
    return Material(
      child: FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Get It'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('You have pushed the button this many times:'),
                    Text(
                      getIt<AppModel>().counter.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: getIt<AppModel>().incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            );
          } else {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Waiting for initialization'),
                SizedBox(height: 16),
                CircularProgressIndicator(),
              ],
            );
          }
        },
      ),
    );
  }
}
