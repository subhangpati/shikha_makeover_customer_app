import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServiceBody(),
    );
  }
}

class ServiceBody extends StatefulWidget {
  @override
  _ServiceBodyState createState() => _ServiceBodyState();
}

class _ServiceBodyState extends State<ServiceBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
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
            onPressed: null,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: Row(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
