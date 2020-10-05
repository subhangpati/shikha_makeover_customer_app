import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        //color: Color(0xffFF7d85),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                    color: Colors.white70,
                    size: 50.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
              ),
              accountName: Text(
                'Jiju Thomas',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'sfpro',
                ),
              ),
              accountEmail: null,
            ),
            Divider(
              thickness: 0.5,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                    ),
                    title: Text(
                      'My Appointment',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.touch_app,
                    ),
                    title: Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.supervised_user_circle,
                    ),
                    title: Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                    ),
                    title: Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance,
                    ),
                    title: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.airline_seat_individual_suite,
                    ),
                    title: Text(
                      'Safety Measures',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
