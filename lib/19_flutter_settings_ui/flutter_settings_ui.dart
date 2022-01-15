import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class MySettingsUi extends StatefulWidget {
  const MySettingsUi({Key? key}) : super(key: key);

  @override
  State<MySettingsUi> createState() => _MySettingsUiState();
}

class _MySettingsUiState extends State<MySettingsUi> {
  bool switchValue1 = true;
  bool switchValue2 = false;
  bool switchValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings UI')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: 'Common',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Environment',
                subtitle: 'Production',
                leading: const Icon(Icons.cloud_queue),
                onPressed: (BuildContext context) {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(
                title: 'Phone number',
                leading: const Icon(Icons.phone),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Email',
                leading: const Icon(Icons.email),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Sign out',
                leading: const Icon(Icons.logout),
                onPressed: (BuildContext context) {},
              )
            ],
          ),
          SettingsSection(
            title: 'Security',
            tiles: [
              SettingsTile.switchTile(
                title: 'Lock app in background',
                leading: const Icon(Icons.phonelink_lock),
                switchValue: switchValue1,
                onToggle: (newValue) {
                  setState(() {
                    switchValue1 = newValue;
                  });
                },
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: const Icon(Icons.fingerprint),
                switchValue: switchValue2,
                onToggle: (newValue) {
                  setState(() {
                    switchValue2 = newValue;
                  });
                },
              ),
              SettingsTile.switchTile(
                title: 'Change password',
                leading: const Icon(Icons.lock),
                switchValue: switchValue3,
                onToggle: (newValue) {
                  setState(() {
                    switchValue3 = newValue;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Misc',
            tiles: [
              SettingsTile(
                title: 'Terms of Service',
                leading: const Icon(Icons.file_copy),
              ),
              SettingsTile(
                title: 'Open source licenses',
                leading: const Icon(Icons.open_with_sharp),
              ),
            ],
          )
        ],
      ),
    );
  }
}
