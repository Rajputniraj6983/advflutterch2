import 'package:flutter/cupertino.dart';

class cupertino extends StatelessWidget {
  const cupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Lists Enhanched'),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoListSection.insetGrouped(
                    header: Text('Single selecton', style: TextStyle(
                        fontSize: 15, color: CupertinoColors.inactiveGray),),
                    dividerMargin: 1,
                    footer: Text('Choose a single item from a list of options',
                      style: TextStyle(
                          fontSize: 10, color: CupertinoColors.inactiveGray),),
                    children: <CupertinoListTile>
                    [
                      CupertinoListTile.notched(title: Text('off'),
                        trailing: Icon(CupertinoIcons.checkmark_alt),
                      ),
                      CupertinoListTile.notched(title: Text('wifi'),),
                      CupertinoListTile.notched(title: Text('mobile dat')),
                    ]
                ),
                CupertinoListSection.insetGrouped(
                  header: Text('Multi selection',style: TextStyle(fontSize: 15,color: CupertinoColors.inactiveGray),),
                  footer: Text('Choose multi item from a list of option',style: TextStyle(color: CupertinoColors.inactiveGray,),
                ),
                 children: <CupertinoListTile> [
                   CupertinoListTile.notched(title: Text('option one'),
                    subtitle: Text('Disabled andselected'),
                     leading: Icon(CupertinoIcons.checkmark_alt),
                    ),
                      CupertinoListTile.notched(
                       title: Text('option two'),
                        subtitle: Text('with subtitle'),
                         leading: Container(),
                        ),
                        CupertinoListTile.notched(
                         title: Text('option three'),
                          leading:Icon(CupertinoIcons.checkmark_alt),
                           ),
                           CupertinoListTile.notched(
                            title: Text('option four'),
                             leading:Container(),
                   ),
                         CupertinoListTile.notched(
                          title: Text('option five'),
                            subtitle: Text('Disabled and not Selected'),
                           leading:Container(),
                            ),
                 ],
                )
              ],
            ),
          )
        ],)

    );
  }

}
