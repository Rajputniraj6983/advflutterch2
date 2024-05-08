import 'package:flutter/cupertino.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text('My People'),
            ),
            SliverFillRemaining(
              child: Column(
                children: List.generate(15, (index) => CupertinoListTile(title: Text('Person ${index}'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
