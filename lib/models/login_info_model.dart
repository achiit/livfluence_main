import 'package:cloud_firestore/cloud_firestore.dart';

class userModel {
  String? docId;
  String? name;
  String? gender;

  userModel({this.docId, this.name, this.gender});

  userModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    name = data["name"];
    gender = data["gender"];
  }
}