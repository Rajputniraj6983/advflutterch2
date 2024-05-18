import 'package:advflutterch2/task6/Modal/colorslist.dart';
import 'package:flutter/material.dart';

class sliverlistview extends StatefulWidget {
  const sliverlistview({super.key});

  @override
  State<sliverlistview> createState() => _sliverlistviewState();
}

class _sliverlistviewState extends State<sliverlistview> {
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
             SliverList.builder(itemCount: colorlist.length,itemBuilder: (context,index) => Container(
               height: 200,width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
             )
            ),
            ]
          ),
    );
  }
}

