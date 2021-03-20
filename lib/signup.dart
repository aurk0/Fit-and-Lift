import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/services/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Center(
              child: Image.asset('gymImages/signup.jpg',
                  height: 1000, fit: BoxFit.fitHeight),
            ),
            Positioned(
              bottom: 500,
              left: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'gymImages/logoX.png',
                      height: 100,
                    ),
                  ),
                  Text(
                    "Don't be a brat,",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "burn that fat.",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 210,
              left: 50,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sign In, it's free!",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: RaisedButton(
                      onPressed: () async {
                        try {
                          await AuthHelper.signInWithGoogle();
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Page1()));
                        } catch (e) {
                          print(e);
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'gymImages/google.png',
                            height: 30,
                          ),
                          Text('Sign In with Google')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'gymImages/fb.png',
                            height: 30,
                          ),
                          Text('Sign In with Facebook')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'or',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log In',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              )),
            ),
            Positioned(
              bottom: 50,
              left: 80,
              child: Column(
                children: [
                  Text(
                    "By signing up, you agree to Fit and Lift's",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Terms of use and Privacy Policy",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
