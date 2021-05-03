import 'package:cloud_firestore/cloud_firestore.dart';

class DataStore {
  Future addgUser(String uid, Map<String, dynamic> gUserMap) async {
    return FirebaseFirestore.instance
        .collection("gUsers")
        .doc(uid)
        .set(gUserMap);
  }
}
