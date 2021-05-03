import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:fit_lift/page1.dart';
import 'package:fit_lift/signInModel/Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: email == null ? FitLift() : Page1()));
}

class FitLift extends StatefulWidget {
  @override
  _FitLiftState createState() => _FitLiftState();
}

class _FitLiftState extends State<FitLift> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ModelSignIn())));
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
