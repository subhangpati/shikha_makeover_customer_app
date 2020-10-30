import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shikha_makeover_customer_app/components/PackageListTile.dart';
import 'package:shikha_makeover_customer_app/model/GetDataClassic.dart';
import 'package:shikha_makeover_customer_app/screens/DateNTime.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ClassicPackage extends StatefulWidget {
  @override
  _ClassicPackageState createState() => _ClassicPackageState();
}

class _ClassicPackageState extends State<ClassicPackage> {
  String collectionName = "Classic";

  data() {
    return FirebaseFirestore.instance.collection(collectionName).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Color(0xffFFFAFA),
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
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
              FontAwesomeIcons.shoppingBag,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
              color: Color(0xffFFFAFA),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: mainMenuList(context)),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DateAndTime())),
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

  mainMenuList(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: data(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(' Error , Contact Admin');
          }
          if (snapshot.hasData) {
            print('The number of documents are ${snapshot.data.docs.length}');
            return buildList(context, snapshot.data.docs);
          }
          return CircularProgressIndicator();
        });
  }

  Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      children:
          snapshot.map<Widget>((data) => buildListItem(context, data)).toList(),
    );
  }

  buildListItem(BuildContext context, DocumentSnapshot data) {
    final Data = GetData.fromSnapshot(data);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        key: ValueKey(Data.title),
        child: PackageListTile(Data: Data));
  }
}
