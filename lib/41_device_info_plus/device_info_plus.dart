import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class MyDeviceInfoPlus extends StatefulWidget {
  const MyDeviceInfoPlus({Key? key}) : super(key: key);

  @override
  State<MyDeviceInfoPlus> createState() => _MyDeviceInfoPlusState();
}

class _MyDeviceInfoPlusState extends State<MyDeviceInfoPlus> {
  String model = '';
  String name = '';
  String systemName = '';
  String systemVersion = '';
  String isPhysicalDevice = '';
  String identifierForVendor = '';
  final TextStyle _style = const TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  deviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    //AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    //print('Running on ${androidInfo.model}');

    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    setState(() {
      model = iosInfo.model.toString();
      name = iosInfo.name.toString();
      systemName = iosInfo.systemName.toString();
      systemVersion = iosInfo.systemVersion.toString();
      isPhysicalDevice = iosInfo.isPhysicalDevice.toString();
      identifierForVendor = iosInfo.identifierForVendor.toString();
    });

    debugPrint('Utsname: ${iosInfo.utsname}');
    debugPrint('LocalizedModel: ${iosInfo.localizedModel}');
    debugPrint('IdentifierForVendor: ${iosInfo.identifierForVendor}');

    //WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
    //print('Running on ${webBrowserInfo.userAgent}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: const Text('Device Info Plus'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Model:  $model', style: _style),
            Text('Name:  $name', style: _style),
            Text('SystemName:  $systemName', style: _style),
            Text('SysTemVersion:  $systemVersion', style: _style),
            Text('IsPhysicalDevice:  $isPhysicalDevice', style: _style),
            Text('IdentifierForVendor: $identifierForVendor', style: _style),
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Check Device Info'),
              onPressed: () {
                deviceInfo();
              },
            ),
          ],
        ),
      ),
    );
  }
}
