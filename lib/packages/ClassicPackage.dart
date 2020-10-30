import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shikha_makeover_customer_app/model/GetDataClassic.dart';
import 'package:shikha_makeover_customer_app/package_model/classic_model.dart';
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
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: mainMenuList(context)
          ),
          InkWell(
            onTap: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DateAndTime())),
            child: Container(
              color: Color(0xffD7352E),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
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
        }
    );
  }

  Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      children: snapshot.map<Widget>((data) => buildListItem(context, data)).toList(),
    );
  }

  buildListItem(BuildContext context, DocumentSnapshot data) {
    final Data = GetData.fromSnapshot(data);
    return Padding(padding: EdgeInsets.symmetric(vertical: 8.0) ,
    key: ValueKey(Data.title),
    child: PackageListTile(Data: Data)
  );
  }
}

class PackageListTile extends StatelessWidget {


  PackageListTile({this.Data});

  final GetData Data;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    width:
    MediaQuery.of(context).size.width / 3.5,
    // child: Image(
    // image: AssetImage(classicModel.img),
    // ),
    ),
    Container(
    width:
    MediaQuery.of(context).size.width / 3,
    padding: EdgeInsets.only(
    top: 10,
    left: 10,
    bottom: 10,
    right: 20),
    child: Column(
    mainAxisAlignment:
    MainAxisAlignment.spaceAround,
    crossAxisAlignment:
    CrossAxisAlignment.start,
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
    mainAxisAlignment:
    MainAxisAlignment.spaceBetween,
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
    decoration: TextDecoration
        .lineThrough),
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
    mainAxisAlignment:
    MainAxisAlignment.spaceAround,
    children: [
    Text(
    'Package Details',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700),
    ),
    // SizedBox(
    //   height: 10,
    // ),
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
