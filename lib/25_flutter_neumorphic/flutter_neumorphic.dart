import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyFlutterNeumorphic extends StatefulWidget {
  const MyFlutterNeumorphic({Key? key}) : super(key: key);

  @override
  State<MyFlutterNeumorphic> createState() => _MyFlutterNeumorphicState();
}

class _MyFlutterNeumorphicState extends State<MyFlutterNeumorphic> {
  int _groupValue = 1;
  bool _switchConcaveEnabled = false;
  bool _switchConvexEnabled = false;
  bool _switchFlatEnabled = false;

  bool useDark = false;

  Color _textColor() {
    if (useDark) {
      return Colors.white70;
    } else {
      return Colors.black;
    }
  }

  Widget _buildProgress() {
    return Row(
      children: [
        Text(
          "Progress",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
        const Flexible(
          child: NeumorphicProgress(
            height: 15,
            percent: 0.55,
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  Widget _buildIndeterminateProgress() {
    return Row(
      children: [
        Text(
          "Progress",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
        const Flexible(
          child: NeumorphicProgressIndeterminate(
            height: 10,
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        Text(
          "Buttons",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 4),
        NeumorphicButton(
          style: const NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.stadium(),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Text(
            "Dark Mode",
            style: TextStyle(color: _textColor()),
          ),
          onPressed: () {
            setState(() {
              useDark = !useDark;
            });
          },
        ),
        const SizedBox(width: 10),
        NeumorphicButton(
          style: const NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.stadium(),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Text(
            "Button 2",
            style: TextStyle(color: _textColor()),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildRadios() {
    return Row(
      children: [
        Text(
          "Radio",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
        NeumorphicRadio(
          value: 1,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = 1;
            });
          },
          child: SizedBox(
            height: 50,
            width: 50,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(color: _textColor()),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        NeumorphicRadio(
          value: 2,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = 2;
            });
          },
          child: SizedBox(
            height: 50,
            width: 50,
            child: Center(
              child: Text(
                "2",
                style: TextStyle(color: _textColor()),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        NeumorphicRadio(
          value: 3,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = 3;
            });
          },
          child: SizedBox(
            height: 50,
            width: 50,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(color: _textColor()),
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool check1 = false;
  bool check2 = false;
  bool check3 = false;

  Widget _buildChecks() {
    return Row(
      children: [
        Text(
          "Checkbox",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
        NeumorphicCheckbox(
          value: check1,
          onChanged: (value) {
            setState(() {
              check1 = value;
            });
          },
        ),
        const SizedBox(width: 12),
        NeumorphicCheckbox(
          value: check2,
          onChanged: (value) {
            setState(() {
              check2 = value;
            });
          },
        ),
        const SizedBox(width: 12),
        NeumorphicCheckbox(
          value: check3,
          onChanged: (value) {
            setState(() {
              check3 = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildIndicators() {
    const width = 14.0;
    return const SizedBox(
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NeumorphicIndicator(
            width: width,
            percent: 0.4,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 0.2,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 0.5,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 1,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 0.4,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 0.2,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 0.5,
          ),
          SizedBox(width: 10),
          NeumorphicIndicator(
            width: width,
            percent: 1,
          ),
        ],
      ),
    );
  }

  double seekValue = 0;

  Widget _buildSlider() {
    return Row(
      children: [
        Text(
          "Slider",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
        Flexible(
          child: NeumorphicSlider(
              height: 15,
              value: seekValue,
              min: 0,
              max: 10,
              onChanged: (value) {
                setState(() {
                  seekValue = value;
                });
              }),
        ),
        const SizedBox(width: 12),
        Text(
          "value: ${seekValue.round()}",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  Widget _buildSwitches() {
    return Row(
      children: [
        Text(
          "Switch",
          style: TextStyle(color: _textColor()),
        ),
        const SizedBox(width: 15),
        NeumorphicSwitch(
          value: _switchConcaveEnabled,
          style: const NeumorphicSwitchStyle(
            thumbShape:
                NeumorphicShape.concave, // concave or flat with elevation
          ),
          onChanged: (value) {
            setState(() {
              _switchConcaveEnabled = value;
            });
          },
        ),
        const SizedBox(width: 15),
        NeumorphicSwitch(
          value: _switchFlatEnabled,
          style: const NeumorphicSwitchStyle(
            thumbShape: NeumorphicShape.flat, // concave or flat with elevation
          ),
          onChanged: (value) {
            setState(() {
              _switchFlatEnabled = value;
            });
          },
        ),
        const SizedBox(width: 15),
        NeumorphicSwitch(
          value: _switchConvexEnabled,
          style: const NeumorphicSwitchStyle(
            thumbShape: NeumorphicShape.convex,
          ),
          onChanged: (value) {
            setState(() {
              _switchConvexEnabled = value;
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      themeMode: useDark ? ThemeMode.dark : ThemeMode.light,
      darkTheme: const NeumorphicThemeData(
        baseColor: NeumorphicColors.darkBackground,
        accentColor: NeumorphicColors.darkAccent,
        lightSource: LightSource.topLeft,
        depth: 6,
        intensity: 0.3,
      ),
      theme: const NeumorphicThemeData(
        baseColor: NeumorphicColors.background,
        lightSource: LightSource.topLeft,
        depth: 10,
        intensity: 0.5,
      ),
      child: Scaffold(
        body: FractionallySizedBox(
          //match parent height
          heightFactor: 1,
          child: NeumorphicBackground(
            //margin: EdgeInsets.all(10),
            //borderRadius: BorderRadius.circular(40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Neumorphic(
                        style: const NeumorphicStyle(depth: -8),
                        child: AppBar(
                          iconTheme: const IconThemeData.fallback(),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          title: const Text(
                            "Flutter Neumorphic",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      /*
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: NeumorphicButton(
                          onClick: (){
                            setState(() {
                              useDark = !useDark;
                            });
                          },
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Text(useDark ? "Dark" : "Light"),
                        ),
                      )
                       */
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(height: 30),
                        _buildProgress(),
                        const SizedBox(height: 12),
                        _buildIndeterminateProgress(),
                        const SizedBox(height: 30),
                        _buildButtons(),
                        const SizedBox(height: 30),
                        _buildRadios(),
                        const SizedBox(height: 30),
                        _buildIndicators(),
                        const SizedBox(height: 30),
                        _buildChecks(),
                        const SizedBox(height: 30),
                        _buildSlider(),
                        const SizedBox(height: 30),
                        _buildSwitches(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
