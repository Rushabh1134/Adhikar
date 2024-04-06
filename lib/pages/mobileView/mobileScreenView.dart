import 'package:adhikar/utils/pageList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mobileScreenView extends StatefulWidget {
  const mobileScreenView({super.key});

  @override
  State<mobileScreenView> createState() => _mobileScreenViewState();
}

class _mobileScreenViewState extends State<mobileScreenView> {
  String username = "";
  int _page = 0;
  late PageController pageController; // for tabs animation

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
     
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (_page == 0) ? Colors.white : Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: (_page == 1) ? Colors.white : Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_rounded,
              color: (_page == 2) ? Colors.white : Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: (_page == 3) ? Colors.white : Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
