import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shikha_makeover_customer_app/screens/Appointment.dart';
import 'package:shikha_makeover_customer_app/screens/HomePage.dart';
import 'package:shikha_makeover_customer_app/screens/Profile.dart';
import 'package:shikha_makeover_customer_app/screens/Services.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentTab = 0;
  PageController _controller = PageController();
  List<Widget> _screens = [
    HomePage(),
    Services(),
    Appointment(),
    Profile(),
  ];
  void _onPageChanged(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: _screens,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffFF7d85),
          iconSize: 30,
          onTap: _onItemTapped,
          currentIndex: _currentTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 22,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.toolbox,
                size: 22,
              ),
              label: 'service',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.calendarCheck,
                size: 22,
              ),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAlt,
                size: 22,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
