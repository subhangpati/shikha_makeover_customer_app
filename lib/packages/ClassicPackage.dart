import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/package_model/classic_model.dart';

class ClassicPackage extends StatefulWidget {
  @override
  _ClassicPackageState createState() => _ClassicPackageState();
}

class _ClassicPackageState extends State<ClassicPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'CLASSIC PACKAGE',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: classicPackageDate.length,
              itemBuilder: (BuildContext context, index) {
                ClassicModel classicModel = classicPackageDate[index];
                return Container(
                  height: 250,
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
                          Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  child: Image(
                                    image: AssetImage(classicModel.img),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        classicModel.title,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'inter',
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '₹ ${classicModel.currentPrice}',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            '₹ ${classicModel.previousPrice}',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          )
                                        ],
                                      ),
                                      Text('${classicModel.time} min'),
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
                          // second half of card
                          Container(
                            height: 110,
                            width: 280,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Package Details',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  classicModel.details,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'inter',
                                    height: 1.3,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: Color(0xffD7352E),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Center(
                  child: Text(
                'NEXT',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
