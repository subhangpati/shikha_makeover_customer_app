import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/model/GetDataClassic.dart';

class PackageListTile extends StatelessWidget {
  PackageListTile({this.Data});

  final GetData Data;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(Data.title),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(8),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Image(
                        image: NetworkImage(Data.image),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: EdgeInsets.only(
                            top: 10, left: 10, bottom: 10, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Data.title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'inter',
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₹ ${Data.price}',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  '₹ 1200',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      decoration: TextDecoration.lineThrough),
                                )
                              ],
                            ),
                            Text('${Data.duration} min'),
                          ],
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: Colors.red,
                          onPressed: () {},
                          child: Text('Add'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // second half of card
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Package Details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Data.packageDetails,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'inter',
                          height: 1.3,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
