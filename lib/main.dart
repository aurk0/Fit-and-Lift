import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:fit_lift/exercises/yoga/yoga.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/signInModel/Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Yoga()));
}

class FitLift extends StatefulWidget {
  @override
  _FitLiftState createState() => _FitLiftState();
}

class _FitLiftState extends State<FitLift> {
  var email;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) => {
          setState(() {
            email = prefs.getString('email');
            if (email == null) {
              Timer(
                  Duration(seconds: 4),
                  () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ModelSignIn())));
            } else {
              Timer(
                  Duration(seconds: 4),
                  () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Page1())));
            }
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Scaffold(
              body: Stack(
                children: <Widget>[
                  Center(
                      child: Image.asset(
                    'gymImages/Picture1.jpg',
                    height: 1080,
                    width: 500,
                    fit: BoxFit.fitHeight,
                    color: Colors.blue[50],
                    colorBlendMode: BlendMode.colorBurn,
                  )),
                  Positioned(
                    top: 390,
                    left: 180,
                    child: SpinKitCubeGrid(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ));
  }
}
