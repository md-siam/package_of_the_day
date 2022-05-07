import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

enum SlideAction { archive, share, more, delete }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlideAction action) onDismissed;

  const SlidableWidget({
    Key? key,
    required this.child,
    required this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      /// `left` side slider
      ///
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            label: 'Archive',
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.archive,
            onPressed: (BuildContext context) =>
                onDismissed(SlideAction.archive),
          ),
          SlidableAction(
            label: 'Share',
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            icon: Icons.share,
            onPressed: (BuildContext context) =>
                onDismissed(SlideAction.share),
          ),
        ],
      ),

      /// `right` side slider
      ///
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            label: 'More',
            backgroundColor: Colors.black45,
            foregroundColor: Colors.white,
            icon: Icons.more_horiz,
            onPressed: (BuildContext context) =>
                onDismissed(SlideAction.more),
          ),
          SlidableAction(
            label: 'Delete',
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            onPressed: (BuildContext context) =>
                onDismissed(SlideAction.delete),
          ),
        ],
      ),
      child: child,
    );
  }
}
