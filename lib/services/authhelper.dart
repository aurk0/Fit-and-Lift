import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/services/dataStore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;
  getcurrentUser() {
    return auth.currentUser;
  }

  final FirebaseAuth _fAuth = FirebaseAuth.instance;
  final GoogleSignIn _gSignIn = GoogleSignIn();
  signGoogle(BuildContext context) async {
    final GoogleSignInAccount _gSignInAccount = await _gSignIn.signIn();
    final GoogleSignInAuthentication _gSignInAuthentication =
        await _gSignInAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: _gSignInAuthentication.idToken,
        accessToken: _gSignInAuthentication.accessToken);

    UserCredential result = await _fAuth.signInWithCredential(credential);
    if (result != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Page1()));
      // Map<String, dynamic> gUserMap = {
      //   "email": result.user.email,
      //   "username": result.user.displayName,
      //   "image": result.user.photoURL
      // };
      // DataStore().addgUser(result.user.uid, gUserMap).then((value) {

      // });
    }
  }

  void signOut() async {
    await _gSignIn.signOut();
  }
}
