import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/page1.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class AuthFacebook extends StatefulWidget {
  @override
  _AuthFacebookState createState() => _AuthFacebookState();
}

class _AuthFacebookState extends State<AuthFacebook> {
  bool isSignIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;
  FacebookLogin facebookLogin = FacebookLogin();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: !isSignIn
          ? SignInButton(
              buttonType: ButtonType.facebook,
              buttonSize: ButtonSize.large,
              onPressed: () async {
                try {
                  await handleLogin();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                } catch (e) {
                  print(e);
                }
              })
          : Center(),
    );
  }

  Future<void> handleLogin() async {
    final FacebookLoginResult result = await facebookLogin.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
      case FacebookLoginStatus.loggedIn:
        try {
          await loginWithfacebook(result);
        } catch (e) {
          print(e);
        }
        break;
    }
  }

  Future loginWithfacebook(FacebookLoginResult result) async {
    final FacebookAccessToken accessToken = result.accessToken;
    AuthCredential credential =
        FacebookAuthProvider.credential(accessToken.token);
    var a = await _auth.signInWithCredential(credential);
    setState(() {
      isSignIn = true;
      _user = a.user;
    });
  }

  // Future<void> gooleSignout() async {
  //   await _auth.signOut().then((onValue) {
  //     setState(() {
  //       facebookLogin.logOut();
  //       isSignIn = false;
  //     });
  //   });
  // }
}
