import 'package:flutter/material.dart';

import 'data.dart';
import 'model/chat_model.dart';
import 'utils.dart';
import 'widget/slidable_widget.dart';

class MyFlutterSlidable extends StatefulWidget {
  const MyFlutterSlidable({Key? key}) : super(key: key);

  @override
  State<MyFlutterSlidable> createState() => _MyFlutterSlidableState();
}

class _MyFlutterSlidableState extends State<MyFlutterSlidable> {
  List<Chat> items = List.of(Data.chats);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Slidable')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(color: Colors.purple);
        },
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return SlidableWidget(
            onDismissed: (SlideAction action) =>
                dismissSlideItem(context, index, action),
            child: buildListTile(item),
          );
        },
      ),
    );
  }

  Widget buildListTile(Chat item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(item.urlAvatar),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(item.message),
        ],
      ),
      onTap: () {},
    );
  }

  void dismissSlideItem(BuildContext context, int index, SlideAction action) {
    setState(() {
      items.removeAt(index);
    });

    switch (action) {
      case SlideAction.archive:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      case SlideAction.share:
        Utils.showSnackBar(context, 'Chat has been shared');
        break;
      case SlideAction.more:
        Utils.showSnackBar(context, 'Selected more');
        break;
      case SlideAction.delete:
        Utils.showSnackBar(context, 'Selected more');
        break;
      default:
    }
  }
}
