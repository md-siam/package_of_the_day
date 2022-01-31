import 'package:flutter/material.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

class MyDayNightSwitcher extends StatefulWidget {
  const MyDayNightSwitcher({Key? key}) : super(key: key);

  @override
  State<MyDayNightSwitcher> createState() => _MyDayNightSwitcherState();
}

class _MyDayNightSwitcherState extends State<MyDayNightSwitcher> {
  bool isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(color: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.deepPurple[100],
      ),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: const Text('Day / Night Switcher')),
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DayNightSwitcher(
                isDarkModeEnabled: isDarkModeEnabled,
                onStateChanged: onStateChanged,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: DayNightSwitcherIcon(
                  isDarkModeEnabled: isDarkModeEnabled,
                  onStateChanged: onStateChanged,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Dark mode is ' +
                    (isDarkModeEnabled ? 'enabled' : 'disabled') +
                    '.'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Called when the state (day / night) has changed.
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}
