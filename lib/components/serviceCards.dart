import 'package:flutter/material.dart';
import '../constant.dart';

class ServiceCards extends StatelessWidget {
  final String serviceName;
  final String iconName;
  final Function onTap;
  ServiceCards({this.serviceName, this.iconName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            kBoxShadow,
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              height: 60.0,
              image: AssetImage('asset/images/icons/Services/$iconName.png'),
            ),
            Text(
              '$serviceName',
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
