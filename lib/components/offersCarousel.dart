import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:shikha_makeover_customer_app/model/Offer_model.dart';

class OffersCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.cyan,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'OFFERS FOR YOU',
                  style: kHeadingStyle,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black26,
            height: 200,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                Offer offer = offers[index];
                return Container(
                  width: 180,
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Stack(
                    children: [
                      Align(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                child: Image(
                                  image: AssetImage(offer.imgUrl),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  offer.title,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '60 Min',
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '₹ 470',
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
