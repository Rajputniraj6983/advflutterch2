import 'package:flutter/cupertino.dart';

class MyPeople extends StatefulWidget {
  const MyPeople({super.key});

  @override
  State<MyPeople> createState() => _MyPeopleState();
}

class _MyPeopleState extends State<MyPeople> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('My People'),
          ),
          SliverFillRemaining(
            child: Column(
              children: List.generate(15, (index) => CupertinoListTile(title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Person ${index}'),
                  Text('$index'),
                ],
              ))),

            ),
          )
        ],
      ),
    );
  }
}

