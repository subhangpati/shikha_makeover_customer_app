import 'package:cloud_firestore/cloud_firestore.dart';

class GetData {
  String title ;
  String price ;
  String packageDetails;
  String duration ;

  DocumentReference reference;

  GetData({this.price , this.duration , this.packageDetails , this.title});

  GetData.fromMap(Map<String , dynamic> map , {this.reference}){
    title = map['title'];
    packageDetails = map['packageDetails'];
    price = map['price'];
    duration = map['duration'];
  }


  GetData.fromSnapshot(DocumentSnapshot snapShot ) : this.fromMap(snapShot.data() , reference : snapShot.reference);

  toJson(){
    return {'title':title , 'packageDetails': packageDetails , 'price':price , duration:'duration'};
  }

}