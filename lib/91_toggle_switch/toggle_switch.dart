// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyToggleSwitch extends StatelessWidget {
  const MyToggleSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Toggle Switch')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              ToggleSwitch(
                initialLabelIndex: 0,
                totalSwitches: 3,
                labels: const ['America', 'Canada', 'Mexico'],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 90.0,
                fontSize: 16.0,
                initialLabelIndex: 1,
                activeBgColor: const [Colors.green],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.grey[900],
                totalSwitches: 3,
                labels: const ['Tall', 'Grande', 'Venti'],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                customWidths: const [90.0, 50.0],
                cornerRadius: 20.0,
                activeBgColors: const [
                  [Colors.cyan],
                  [Colors.redAccent]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: const ['YES', ''],
                icons: const [null, FontAwesomeIcons.times],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                initialLabelIndex: 1,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: const ['Male', 'Female'],
                icons: const [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                activeBgColors: const [
                  [Colors.blue],
                  [Colors.pink]
                ],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 70.0,
                initialLabelIndex: 0,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 3,
                icons: const [
                  FontAwesomeIcons.facebook,
                  FontAwesomeIcons.twitter,
                  FontAwesomeIcons.instagram
                ],
                iconSize: 30.0,
                borderColor: const [
                  Color(0xff3b5998),
                  Color(0xff8b9dc3),
                  Color(0xff00aeff),
                  Color(0xff0077f2),
                  Color(0xff962fbf),
                  Color(0xff4f5bd5)
                ],
                dividerColor: Colors.blueGrey,
                activeBgColors: const [
                  [Color(0xff3b5998), Color(0xff8b9dc3)],
                  [Color(0xff00aeff), Color(0xff0077f2)],
                  [
                    Color(0xfffeda75),
                    Color(0xfffa7e1e),
                    Color(0xffd62976),
                    Color(0xff962fbf),
                    Color(0xff4f5bd5)
                  ]
                ],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 70.0,
                initialLabelIndex: 0,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                icons: const [
                  FontAwesomeIcons.lightbulb,
                  FontAwesomeIcons.solidLightbulb,
                ],
                iconSize: 30.0,
                activeBgColors: const [
                  [Colors.black45, Colors.black26],
                  [Colors.yellow, Colors.orange]
                ],
                // with just animate set to true, default curve = Curves.easeIn
                animate: true,
                // animate must be set to true when using custom curve
                curve: Curves.bounceInOut,
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                cornerRadius: 20.0,
                activeBgColors: [
                  [Colors.green[800]!],
                  [Colors.red[800]!]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                initialLabelIndex: 1,
                totalSwitches: 2,
                labels: const ['True', 'False'],
                radiusStyle: true,
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                cornerRadius: 20.0,
                inactiveFgColor: Colors.white,
                initialLabelIndex: null,
                doubleTapDisable: true, // re-tap active widget to de-activate
                totalSwitches: 3,
                labels: const ['Normal', 'Bold', 'Italic'],
                customTextStyles: const [
                  null,
                  TextStyle(
                      color: Colors.brown,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900),
                  TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic)
                ],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 90.0,
                cornerRadius: 20.0,
                activeBgColors: const [
                  [Color(0xfffdbb0a)],
                  [Colors.black54],
                  [Colors.white54]
                ],
                inactiveFgColor: Colors.white,
                initialLabelIndex: 2,
                totalSwitches: 3,
                customIcons: const [
                  Icon(
                    FontAwesomeIcons.ccVisa,
                    color: Color(0xff1a1f71),
                    size: 55.0,
                  ),
                  Icon(
                    FontAwesomeIcons.ccMastercard,
                    color: Color(0xffF79E1B),
                    size: 55.0,
                  ),
                  Icon(
                    FontAwesomeIcons.ccAmex,
                    color: Color(0xff27AEE3),
                    size: 55.0,
                  )
                ],
                onToggle: (index) {
                  debugPrint('switched to: $index');
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
