import 'package:flutter/material.dart';

class GetIndicator extends StatelessWidget {
  final int pageNo;
  final int cPageNo;
  GetIndicator({this.pageNo, this.cPageNo});

  @override
  Widget build(BuildContext context) {
    int currentPage = cPageNo;
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: (currentPage == pageNo) ? Color(0xffff7d85) : Colors.grey,
      ),
    );
    ;
  }
}
