import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import '../widget/change_theme_button_widget.dart';
import '../provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'enabled'
        : 'disabled';
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Day Night Switcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ChangeThemeButtonWidget(),
            const SizedBox(height: 20),
            DayNightSwitcher(
              dayBackgroundColor: Colors.deepPurple,
              isDarkModeEnabled: themeProvider.isDarkMode,
              onStateChanged: (value) {
                final provider =
                    Provider.of<ThemeProvider>(context, listen: false);
                provider.toggleTheme(value);
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: DayNightSwitcherIcon(
                dayBackgroundColor: Colors.deepPurple,
                isDarkModeEnabled: themeProvider.isDarkMode,
                onStateChanged: (value) {
                  final provider =
                      Provider.of<ThemeProvider>(context, listen: false);
                  provider.toggleTheme(value);
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Dark mode is $text!',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
