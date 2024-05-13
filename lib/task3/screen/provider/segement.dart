import 'package:advflutterch2/task3/screen/provider/slidersegement.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../modal/slidelist.dart';

class Segment extends StatefulWidget {
  const Segment({super.key});

  @override
  State<Segment> createState() => _SegmentState();
}

class _SegmentState extends State<Segment> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView (
          slivers : [
            CupertinoSliverNavigationBar(
              middle: Text("Title",style: TextStyle(fontSize: 30),),
              largeTitle: Center(
                child:CupertinoSlidingSegmentedControl(
                  groupValue: Provider.of<Sliderprovider>(context,listen: true)
                  .slidingIndex .toString(),
                  thumbColor: CupertinoColors.systemGrey2,
                  children: {
                    '0' : Text('First',style: TextStyle(fontSize: 25),),
                    '1' : Text('Second',style: TextStyle(fontSize: 25),),
                    '2' : Text('Third',style: TextStyle(fontSize: 25),),
                  },
                  onValueChanged: (value) {
                    Provider.of<Sliderprovider>(context,listen: false).changeSlider(value!);
                  },
                ),
              ),
            ),
            SliverFillRemaining(
              child: Center(
               child: Text(
                 SlideList[Provider.of<Sliderprovider>(context).slidingIndex],style: TextStyle(fontSize: 35),
               ),
              ),
            )
          ]
        )
    );
  }
}
