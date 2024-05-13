import 'package:advflutterch2/task3/screen/provider/segement.dart';
import 'package:advflutterch2/task3/screen/provider/slidersegement.dart';
import 'package:advflutterch2/task3/screen/provider/tabbar.dart';
import 'package:advflutterch2/task3/views/cupertinolist.dart';
import 'package:advflutterch2/task3/views/mypeople.dart';
import 'package:advflutterch2/task3/views/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
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
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Segment(),
    );
  }
}

