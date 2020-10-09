import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/components/NavigationBar.dart';
import 'package:shikha_makeover_customer_app/components/SideDrawer.dart';
import 'package:shikha_makeover_customer_app/components/homeImageCarousel.dart';
import 'package:shikha_makeover_customer_app/components/getIndicator.dart';
import 'package:shikha_makeover_customer_app/components/homeServiceCards.dart';
import 'package:shikha_makeover_customer_app/components/offersCarousel.dart';
import 'package:shikha_makeover_customer_app/constant.dart';
import 'package:shikha_makeover_customer_app/components/guideLinesBar.dart';
import 'package:shikha_makeover_customer_app/screens/Services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 180,
            //color: Colors.orange,
            child: PageView(
              controller: _pageController,
              children: [
                HomeImageCarousel(
                  img: 'scroll1',
                ),
                HomeImageCarousel(
                  img: 'scroll2',
                ),
                HomeImageCarousel(
                  img: 'scroll3',
                ),
                HomeImageCarousel(
                  img: 'scroll4',
                ),
                HomeImageCarousel(
                  img: 'scroll15',
                ),
              ],
              onPageChanged: (value) => {setCurrentPage(value)},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => GetIndicator(
                pageNo: index,
                cPageNo: currentPage,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.amberAccent,
            height: 300,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'SERVICES',
                        style: kHeadingStyle,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServiceCards(
                      iconName: 'hairDresser',
                      serviceName: 'Classic',
                    ),
                    ServiceCards(
                      iconName: 'facialTreatment',
                      serviceName: 'Facial',
                    ),
                    ServiceCards(
                      iconName: 'faceMask',
                      serviceName: 'De Tan',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServiceCards(
                      iconName: 'massageBack',
                      serviceName: 'Body Massage',
                    ),
                    ServiceCards(
                      iconName: 'footSpa',
                      serviceName: 'Pedicure',
                    ),
                    ServiceCards(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Services()));
                      },
                      iconName: 'massageHead',
                      serviceName: 'More',
                    ),
                  ],
                ),
              ],
            ),
          ),
          OffersCarousel(),
          GuidelinesBar(),
          Divider(
            height: 50,
            color: Colors.black,
            thickness: 2,
            indent: 150,
            endIndent: 150,
          ),
          Text(
            'Beauty Anytime, Anywhere',
            style: TextStyle(
              fontFamily: 'autobio',
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
      drawer: SideDrawer(),
      bottomNavigationBar: NavigationBar(),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }
}
