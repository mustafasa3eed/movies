import 'package:flutter/material.dart';
import 'package:movies/tabs/browse.dart';
import 'package:movies/tabs/home.dart';
import 'package:movies/tabs/search.dart';
import 'package:movies/tabs/watchlist.dart';
import 'package:movies/theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyThemeData.primaryColor,
        selectedItemColor: MyThemeData.yellowColor,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_outlined,
              ),
              label: 'BROWSE'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_bookmark_rounded,
              ),
              label: 'WATCHLIST'),
        ],
      ),
      body: tabs[currentIndex],
    );
  }
  List<Widget> tabs = [
    Home(),
    Search(),
    Browse(),
    Watchlist(),
  ];
}
