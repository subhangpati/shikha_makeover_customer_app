import 'package:flutter/material.dart';

class GuidelinesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 120,
      color: Colors.orange,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GuidelinesCard(
            img: 'GenuineProducts',
            title: 'Genuine Products',
          ),
          GuidelinesCard(
            img: 'BestHomeSalon',
            title: 'Best Home Salon',
          ),
          GuidelinesCard(
            img: 'SecurePayments',
            title: 'Secure Payments',
          ),
          GuidelinesCard(
            img: 'Professionals',
            title: 'Professionals',
          ),
          GuidelinesCard(
            img: 'EasyToUse',
            title: 'Easy to Use',
          ),
        ],
      ),
    );
  }
}

class GuidelinesCard extends StatelessWidget {
  final String img;
  final String title;
  GuidelinesCard({this.img, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              child: Image(
                image: AssetImage('asset/images/icons/LowerGuideline/$img.png'),
              ),
            ),
            Text(
              '$title',
              style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
