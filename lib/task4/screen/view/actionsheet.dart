
import 'package:flutter/cupertino.dart';

class actionsheet extends StatelessWidget {
  const actionsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle:  Text("Cupertino Action Sheet"),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                actions: [
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        "Default Action",
                        style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        "Normal Action",
                        style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        "Destructive Action",
                        style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
              ),
            );
          },
          child: Text(
            "Press to Open",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
