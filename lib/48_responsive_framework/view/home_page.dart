import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ResponsiveVisibility(
          hiddenWhen: const [
            Condition.largerThan(name: TABLET),
          ],
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.grass)),
        ),
        title: const Text('Responsive Framework'),
        actions: [
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: TABLET)],
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Courses')),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: TABLET)],
            child: ElevatedButton(onPressed: () {}, child: const Text('About')),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          controller: null,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  width: 800,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple[200],
                  ),
                  child: Text(
                    'Responsive Framework',
                    style: TextStyle(
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 30.0,
                        valueWhen: const [
                          Condition.smallerThan(name: MOBILE, value: 25.0),
                          Condition.largerThan(name: TABLET, value: 60.0)
                        ],
                      ).value,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(30),
                columnPadding: const EdgeInsets.all(30),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 250,
                        width: 350,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple[200],
                        ),
                        child: const Text(
                          'Course No. 1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 250,
                        width: 350,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple[200],
                        ),
                        child: const Text(
                          'Course No. 2',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
