import 'package:flutter/material.dart';
import 'package:whatsin/screens/model/appbar.dart';
import 'package:whatsin/screens/call.dart';
import 'package:whatsin/screens/community.dart';
import 'package:whatsin/screens/home.dart';
import 'package:whatsin/screens/status.dart';


class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int activeIndex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          StatusScreen(),
          CommunityScreen(),
          CallScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF07141C),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle_sharp),
              label: "Status",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Groups",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls",
            ),
          ],
          currentIndex: activeIndex,

          selectedItemColor: const Color.fromARGB(
              255, 33, 243, 103), // Color for the selected item
          unselectedItemColor: Colors.grey, // Color for the unselected items
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
            pageController.jumpToPage(index);
          },
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
