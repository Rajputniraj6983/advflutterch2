import 'package:flutter/cupertino.dart';

class Context extends StatelessWidget {
  const Context({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(
     child: SizedBox(height: 250,
       child: CupertinoContextMenu(
         enableHapticFeedback: true,
         actions: <Widget> [
             CupertinoContextMenuAction(
               onPressed: () {
                 Navigator.pop(context);
               },
               trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
               child: Text('Copy'),
             ),
             CupertinoContextMenuAction(
               onPressed: () {
                 Navigator.pop(context);
                 },
               trailingIcon: CupertinoIcons.share,
               child: Text('Share'),
             ),
           CupertinoContextMenuAction(
             onPressed: () {
               Navigator.pop(context);
             },
             trailingIcon: CupertinoIcons.heart,
             child: Text('Favourite'),
           ),
           CupertinoContextMenuAction(
             onPressed: () {
               Navigator.pop(context);
             },
             trailingIcon: CupertinoIcons.delete,
             child: Text('Delete'),
           ),
         ],
         child: SizedBox(
           child: Image.asset('assets/images (3).jpg'),
         ),
       ),
      ),
    ),
    )
  }
}
