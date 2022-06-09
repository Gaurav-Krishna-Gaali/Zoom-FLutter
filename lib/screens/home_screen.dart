import 'package:flutter/material.dart';
import 'package:zoom_flutter/util/colors.dart';
import 'package:zoom_flutter/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet & Chat'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(onPressed: (){}, text: 'New Meeting', icon: Icons.videocam),
              HomeMeetingButton(onPressed: (){}, text: 'Join Meeting', icon: Icons.add_box_rounded),
              HomeMeetingButton(onPressed: (){}, text: 'Schedule', icon: Icons.calendar_today),
              HomeMeetingButton(onPressed: (){}, text: 'hare Screen', icon: Icons.arrow_upward_rounded),
            ]
          ),
          const Expanded(child: Center(child: Text('Create/Join Meetings with just a click!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))),
        ],
      ),
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
