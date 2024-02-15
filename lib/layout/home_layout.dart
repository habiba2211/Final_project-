import 'package:final_project/features/Community/presentation/pages/community_tab.dart';
import 'package:final_project/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List<Widget> tabs = [CommunityTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //////////////////////////////////////////////////////////////////////// image picker
        },
        backgroundColor: Colors.teal,
        shape: const CircleBorder(
            side: BorderSide(color: Colors.white, width: 1.0)),
        child: const Icon(
          Icons.document_scanner_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (idx) {
            index = idx;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: index == 0
                      ? MyColors.tapBarIconColor
                      : MyColors.grayColor,
                ),
                backgroundColor: Colors.transparent,
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat,
                    color: index == 1
                        ? MyColors.tapBarIconColor
                        : MyColors.grayColor),
                backgroundColor: Colors.transparent,
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: index == 2
                        ? MyColors.tapBarIconColor
                        : MyColors.grayColor),
                label: "Browse"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,
                    color: index == 3
                        ? MyColors.tapBarIconColor
                        : MyColors.grayColor),
                label: "Watchlist"),
          ],
        ),
      ),
      body: tabs[index],
    );
  }
}
