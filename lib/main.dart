import 'package:advflutterch2/task3/screen/provider/segement.dart';
import 'package:advflutterch2/task3/screen/provider/slidersegement.dart';
import 'package:advflutterch2/task3/screen/provider/tabbar.dart';
import 'package:advflutterch2/task3/views/cupertinolist.dart';
import 'package:advflutterch2/task3/views/mypeople.dart';
import 'package:advflutterch2/task3/views/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task4/screen/view/actionsheet.dart';
import 'task4/screen/view/contextmenu.dart';
import 'task5/views/androiddate.dart';
import 'task5/views/iosdate.dart';
import 'task6/views/sliverlistview.dart';
import 'task6/views/sliverwidgets.dart';
void main()
{
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Sliderprovider(),)
  ],child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverWidgets(),
    );
  }
}

