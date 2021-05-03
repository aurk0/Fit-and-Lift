import 'package:cloud_firestore/cloud_firestore.dart';

class DataStore {
  Future addUser(String uid, Map<String, dynamic> gUserMap) async {
    return FirebaseFirestore.instance
        .collection("Users")
        .doc(uid)
        .set(gUserMap);
  }
}
