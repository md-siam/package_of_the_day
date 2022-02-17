import 'package:flutter/material.dart';
import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class MyDayNightTimePicker extends StatefulWidget {
  const MyDayNightTimePicker({Key? key}) : super(key: key);

  @override
  _MyDayNightTimePickerState createState() => _MyDayNightTimePickerState();
}

class _MyDayNightTimePickerState extends State<MyDayNightTimePicker> {
  TimeOfDay _time = TimeOfDay.now().replacing(hour: 11, minute: 30);
  bool iosStyle = true;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Day Night Time Picker')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                "Popup Picker Style",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                _time.format(context),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    showPicker(
                      context: context,
                      value: _time,
                      onChange: onTimeChanged,
                      minuteInterval: MinuteInterval.FIVE,
                      // Optional onChange to receive value as DateTime
                      onChangeDateTime: (DateTime dateTime) {
                        print(dateTime);
                      },
                    ),
                  );
                },
                child: const Text(
                  "Open time picker",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Text(
                "Inline Picker Style",
                style: Theme.of(context).textTheme.headline6,
              ),
              // Render inline widget
              createInlinePicker(
                elevation: 1,
                value: _time,
                onChange: onTimeChanged,
                minuteInterval: MinuteInterval.FIVE,
                iosStylePicker: iosStyle,
                minHour: 9,
                maxHour: 21,
                is24HrFormat: false,
              ),
              Text(
                "IOS Style",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Switch(
                value: iosStyle,
                onChanged: (newVal) {
                  setState(() {
                    iosStyle = newVal;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
