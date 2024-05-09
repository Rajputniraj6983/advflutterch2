import 'package:flutter/cupertino.dart';
class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text('Settings'),
        ),
         SliverFillRemaining(
           child: Column(
             children: [
               CupertinoListSection(
                 dividerMargin: 1,
                 children: <CupertinoListTile> [
                   CupertinoListTile.notched(title: Text('General',style: TextStyle(fontSize: 15),),
                   leading: Icon(CupertinoIcons.settings),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(title: Text('Display & Notifications',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.text_cursor),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(title: Text('Wallpaper',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.photo),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(title: Text('Sounds',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.speaker_2_fill),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(title: Text('Privacy',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.hand_raised_fill),
                     trailing: CupertinoListTileChevron(),
                   )
                 ]
               ),
               CupertinoListSection(
                 children: <CupertinoListTile> [
                   CupertinoListTile.notched(
                       title: Text('I Cloud',style: TextStyle(fontSize: 15),),
                        subtitle: Text('nirajrajput6983@gmail.com',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.cloud),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(
                     title: Text('iTunes & App Store',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.textformat),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(
                     title: Text('PassBook & Apply Pay',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.book),
                     trailing: CupertinoListTileChevron(),
                   ),
                 ],
               ),
               CupertinoListSection(
                 children: <CupertinoListTile> [
                   CupertinoListTile.notched(
                       title: Text('Mail,Contacts,Calendar',style: TextStyle(fontSize: 15),),
                   leading: Icon(CupertinoIcons.mail_solid),
                   trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(
                     title: Text('Notes',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.book),
                     trailing: CupertinoListTileChevron(),
                   ),
                   CupertinoListTile.notched(
                     title: Text('Remainders',style: TextStyle(fontSize: 15),),
                     leading: Icon(CupertinoIcons.book),
                     trailing: CupertinoListTileChevron(),
                   ),
                 ],
               )
             ],
           ),
         )
      ],
    ));
  }
}
