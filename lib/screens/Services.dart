import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/model/service_model.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () => Navigator.pop(context),
          ),
          title: Text(
            'SERVICES',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: services.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, index) {
            Service service = services[index];
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => service.onPress),
              ),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 6),
                child: Card(
                  color: Color(service.color),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              service.title,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              service.subText,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'inter',
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image(
                        image: AssetImage(service.imgUrl),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
