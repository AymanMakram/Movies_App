import 'package:flutter/material.dart';
import 'package:movies_app/Screens/Browsetap.dart';
import 'package:movies_app/Screens/Hometap.dart';
import 'package:movies_app/Screens/Searchtap.dart';
import 'package:movies_app/Screens/Watchlisttap.dart';
import 'package:movies_app/main.dart';
import 'dart:math' as math;

class Homepage extends StatefulWidget{
  static const String routeName = 'home';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentpage = 0;
  List<Widget> tabs = [
    HomeTap(),
    SearchTap(),
    BrowseTap(),
    WatchlistTap(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar:
        Theme(
          data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primarycolor),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentpage = index;
              });
            },
            currentIndex: currentpage,
            selectedItemColor: MyThemeData.selecteditem,
            unselectedItemColor: MyThemeData.unselecteditem,
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home, size: 30,)),
              BottomNavigationBarItem(
                  label: 'Search',
                  icon: Icon(Icons.search, size: 30,)),
              BottomNavigationBarItem(
                  label: 'Browse',
                  icon: Icon(Icons.movie, size: 30,)),
              BottomNavigationBarItem(
                  label: 'Watch List',
                  icon: Transform(transform: Matrix4.rotationY(math.pi),
                    alignment: Alignment.center,
                    child: Icon(Icons.collections_bookmark_rounded , size: 30,),

                  )),
            ],

          ),
        ),
      body: tabs[currentpage],
    );
  }

  Widget getcurrentpage() {
    if (currentpage == 0) {
      return HomeTap();
    }
    else if (currentpage == 1) {
      return SearchTap();
    }
    else if (currentpage == 2) {
      return BrowseTap();
    }
    else  {
      return WatchlistTap();
    }
  }

}