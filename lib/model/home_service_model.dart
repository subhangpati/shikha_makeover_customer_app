import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/packages/BodyMassage.dart';
import 'package:shikha_makeover_customer_app/packages/ClassicPackage.dart';
import 'package:shikha_makeover_customer_app/packages/DeTanBleach.dart';
import 'package:shikha_makeover_customer_app/packages/FacialAndClean.dart';
import 'package:shikha_makeover_customer_app/packages/MediPedicure.dart';
import 'package:shikha_makeover_customer_app/screens/Services.dart';

class HomeService {
  String title, img;
  Widget onPress;

  HomeService({this.title, this.img, this.onPress});
}

List<HomeService> serviceTab = [
  HomeService(
    title: 'Classic',
    img: 'asset/images/icons/Services/hairDresser.png',
    onPress: ClassicPackage(),
  ),
  HomeService(
    title: 'Facial',
    img: 'asset/images/icons/Services/facialTreatment.png',
    onPress: FacialAndClean(),
  ),
  HomeService(
    title: 'De Tan',
    img: 'asset/images/icons/Services/faceMask.png',
    onPress: DeTanBleach(),
  ),
  HomeService(
      title: 'Body Massage',
      img: 'asset/images/icons/Services/massageBack.png',
      onPress: BodyMassage()),
  HomeService(
    title: 'Pedicure',
    img: 'asset/images/icons/Services/footSpa.png',
    onPress: MediPediCure(),
  ),
  HomeService(
    title: 'More',
    img: 'asset/images/icons/Services/massageHead.png',
    onPress: Services(),
  ),
];
