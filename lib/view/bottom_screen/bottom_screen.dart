import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:flutter_netflix_clone/view/download_screen/download_screen.dart';
import 'package:flutter_netflix_clone/view/home_screen/home_screen.dart';
import 'package:flutter_netflix_clone/view/more_screen/more_screen.dart';
import 'package:flutter_netflix_clone/view/search_screen/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    List _screens=[
      HomeScreen(),
      SearchScreen(),
      ComingSoonScreen(),
      DownloadScreen(),
      Menuscreen(),
    ];
    return Scaffold(
      body: _screens[selectedIndex],      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap:(value) {
          setState(() {
            selectedIndex = value;
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: "Coming Soon"),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ]),
    );
  }
}