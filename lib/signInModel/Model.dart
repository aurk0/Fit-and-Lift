import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/services/authhelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_button/sign_button.dart';

class ModelSignIn extends StatefulWidget {
  @override
  _ModelSignInState createState() => _ModelSignInState();
}

class _ModelSignInState extends State<ModelSignIn> {
  TextEditingController _emailcontroller1 = new TextEditingController();
  TextEditingController _passcontroller1 = new TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('gymImages/signup.jpg'),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: WillPopScope(
            onWillPop: () {
              SystemNavigator.pop();
            },
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      'gymImages/logoX.png',
                      height: 100,
                    ),
                    Text(
                      "Don't be a brat,",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "burn that fat.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Sign Up, it's free!",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 285,
                      child: TextField(
                        controller: _emailcontroller1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            hintText: "Enter E-mail",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 50,
                      width: 285,
                      child: TextField(
                        controller: _passcontroller1,
                        obscureText: true,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 50,
                      width: 285,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: TextButton(
                          onPressed: () async {
                            if (_key.currentState.validate()) {
                              login();
                            }
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.cyan[600],
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    SignInButton(
                        buttonType: ButtonType.google,
                        buttonSize: ButtonSize.large,
                        onPressed: () => AuthHelper().signGoogle(context)),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Colors.cyan[600]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
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
            ),
          ),
        )
      ],
    );
  }

  void login() async {
    try {
      final User user = (await auth.createUserWithEmailAndPassword(
              email: _emailcontroller1.text, password: _passcontroller1.text))
          .user;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', _emailcontroller1.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
      print('Login Successful');
    } catch (e) {
      print(e);
    }
  }
}
