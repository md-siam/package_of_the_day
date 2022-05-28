import 'dart:async';

import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'utils.dart';

class MyConnectivityPlus extends StatelessWidget {
  const MyConnectivityPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Connectivity Plus',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const ConnectivityPlusHomeScreen(),
      ),
    );
  }
}

class ConnectivityPlusHomeScreen extends StatefulWidget {
  const ConnectivityPlusHomeScreen({Key? key}) : super(key: key);

  @override
  State<ConnectivityPlusHomeScreen> createState() =>
      _ConnectivityPlusHomeScreenState();
}

class _ConnectivityPlusHomeScreenState
    extends State<ConnectivityPlusHomeScreen> {
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();

    /// this subscription listener will automatically display the snackbar
    /// if the internet connection is `established` or `disconnected`
    ///
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      showConnectivitySnackBar(context, result);
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connectivity Plus')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Check Connection'),
          onPressed: () async {
            var result = await Connectivity().checkConnectivity();
            // ignore: use_build_context_synchronously
            showConnectivitySnackBar(context, result);
          },
        ),
      ),
    );
  }

  void showConnectivitySnackBar(
      BuildContext context, ConnectivityResult result) {
    final hasInternet = result != ConnectivityResult.none;

    final message = hasInternet
        ? 'You have again ${result.toString()}'
        : 'You have no internet';
    final color = hasInternet ? Colors.green : Colors.red;

    Utils.showTopSnackBar(context, message, color);
  }
}
