import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyGeolocator extends StatefulWidget {
  const MyGeolocator({Key? key}) : super(key: key);

  @override
  State<MyGeolocator> createState() => _MyGeolocatorState();
}

class _MyGeolocatorState extends State<MyGeolocator> {
  String? errorMessage;
  String? longitude;
  String? latitude;
  final TextStyle _style = const TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  void getCurrentPosition() async {
    // Permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      errorMessage = 'Permission not given';
      debugPrint('Permission not given');
      // Requesting for accessing geolocation
      await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      longitude = currentPosition.longitude.toString();
      latitude = currentPosition.latitude.toString();
      debugPrint('Longitude: ${currentPosition.longitude.toString()}');
      debugPrint('Latitude: ${currentPosition.latitude.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(title: const Text('Geolocator')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Longitude: $longitude',
                style: _style,
              ),
              Text(
                'Latitude: $latitude',
                style: _style,
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                child: const Text('Get Current Position'),
                onPressed: () {
                  setState(() {
                    getCurrentPosition();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
