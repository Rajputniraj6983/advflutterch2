import 'package:advflutterch2/task6/Modal/colorslist.dart';
import 'package:flutter/material.dart';

class SliverWidgets extends StatefulWidget {
  const SliverWidgets({super.key});

  @override
  State<SliverWidgets> createState() => _SliverWidgetsState();
}

class _SliverWidgetsState extends State<SliverWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
          SliverAppBar(
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Sliver Widgets',
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            background: Image.asset(
              'assets/background.images.jpg', fit: BoxFit.cover,),
          ),
        ),

            SliverGrid(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             delegate: SliverChildBuilderDelegate(childCount: colorlist.length,(context,index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(decoration: BoxDecoration(color: colorlist[index],borderRadius: BorderRadius.all(Radius.circular(15))),),
              )
             ),
            )

          ],
    )
    ,
    );
  }
}

