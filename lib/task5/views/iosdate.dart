
import 'package:flutter/cupertino.dart';

class Iosdate extends StatefulWidget {
  const Iosdate({super.key});

  @override
  State<Iosdate> createState() => _IosdateState();
}
    DateTime currentdate = DateTime(2016, 10, 26);
    String? selectedDate;
class _IosdateState extends State<Iosdate> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Ios-Date',style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
        child: Column(
          children: [
            SizedBox(height: 150),
            Container(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (DateTime newDate) {
                  setState(() => currentdate = newDate);
                },
              ),
            ),
            SizedBox(height: 30),
            Text("${currentdate.year}-${currentdate.month}-${currentdate.day}-${currentdate.hour}",style: TextStyle(color: CupertinoColors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],
        ));
  }
}
DateTime dateTime= DateTime.now();

