import 'package:flutter/material.dart';
import 'package:zoom_flutter/screens/history_meeting_screen.dart';
import 'package:zoom_flutter/screens/meeting_screen.dart';
import 'package:zoom_flutter/util/colors.dart';
import 'package:zoom_flutter/widgets/custom_button.dart';
import 'package:zoom_flutter/widgets/home_meeting_button.dart';

import '../resources/auth_methods.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final AuthMethods _authMethods = AuthMethods();
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
     MeetingsScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    const Text('Settings'), 
    CustomButton(text: 'Log Out', onPressed: () => AuthMethods().signOut()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet & Chat'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              label: 'Meet & Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.lock_clock,
              ),
              label: 'Meetings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}

