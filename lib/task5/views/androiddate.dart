import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Androidate extends StatefulWidget {
  const Androidate({super.key});

  @override
  State<Androidate> createState() => _AndroidateState();
}

class _AndroidateState extends State<Androidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Android Date', style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(onTap: () {
              showDatePicker(context: context,
                  firstDate: DateTime(1947),
                  lastDate: DateTime(2047));
            },
                child: Text('Date', style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
