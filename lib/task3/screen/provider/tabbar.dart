import 'package:flutter/cupertino.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 60,
        activeColor: CupertinoColors.black,
          iconSize: 35,
           backgroundColor: CupertinoColors.white,
            items: const [
              BottomNavigationBarItem(icon: Column(
                children: [
                  Icon(CupertinoIcons.home),Text("Home")
                ],
              )),
              BottomNavigationBarItem(icon: Column(
                children: [
                  Icon(CupertinoIcons.chat_bubble),Text("Chats")
                ],
              )),
              BottomNavigationBarItem(icon: Column(
                children: [
                  Icon(CupertinoIcons.refresh),Text("Updates")
                ],
              )),
              BottomNavigationBarItem(icon: Column(
                children: [
                  Icon(CupertinoIcons.group),Text("Communities")
                ],
              )),
              BottomNavigationBarItem(icon: Column(
                children: [
                  Icon(CupertinoIcons.phone),Text("Calls")
                ],
              )),
            ]
      ),
       tabBuilder: (BuildContext context,int index) {
        return CupertinoTabView(
          builder: (BuildContext context){
            return Center(
              child: Text(tabScreens[index],style: TextStyle(fontSize: 50),),
            );
          }
        );
       }
    );
  }
}

List tabScreens = [
  "Home",
  "Chats",
  "Updates",
  "Communities",
  "Calls",
];
