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
                child: Padding(
                  padding: const EdgeInsets.only(top: 200,),
                  child: Container(height: 60,width: 120,
                    child: Center(
                      child: Text('Date', style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),),
                    ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
