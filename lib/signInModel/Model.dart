import 'package:fit_lift/services/auth_provider_facebook.dart';
import 'package:fit_lift/services/auth_provider_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sign_button/sign_button.dart';

class ModelSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              SignInButton(
                  buttonType: ButtonType.google,
                  buttonSize: ButtonSize.large,
                  onPressed: () async {
                    try {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.login();
                    } catch (e) {
                      print(e);
                    }
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [AuthFacebook()],
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
                      style: TextStyle(decoration: TextDecoration.underline),
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
    );
  }
}
