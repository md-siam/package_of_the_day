import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class MyTimelines extends StatelessWidget {
  const MyTimelines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timelines'),
      ),
      body: Timeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          connectorStyle: ConnectorStyle.dashedLine,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
