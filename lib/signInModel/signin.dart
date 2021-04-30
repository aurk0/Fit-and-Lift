import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/services/auth_provider_google.dart';
import 'package:fit_lift/signInModel/Model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
              if (snapshot.hasData) {
                return Page1();
              } else {
                return ModelSignIn();
              }
            },
          ),
        ),
      ),
    );
  }
}
