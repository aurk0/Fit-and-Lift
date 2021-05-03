import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/services/authhelper.dart';
import 'package:fit_lift/signInModel/Model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('gymImages/drawer.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.brown[100], BlendMode.colorBurn))),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(user.photoURL),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.displayName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Container(
        height: 300,
        width: double.infinity,
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.schedule_rounded,
                color: Colors.black,
              ),
              title: Text("My Workout Schedule"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.alarm_rounded,
                color: Colors.black,
              ),
              title: Text("Reminder"),
            ),
            ListTile(
              onTap: () {
                showAboutDialog(
                    context: context, applicationName: 'Fit & Lift');
              },
              leading: Icon(
                Icons.security_rounded,
                color: Colors.black,
              ),
              title: Text("About"),
            ),
            ListTile(
              onTap: () {
                AuthHelper().signOut();
                FirebaseAuth.instance.signOut();
                mailLogout();
              },
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text("Logout"),
            )
          ],
        ),
      ),
    ]);
  }

  Future mailLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('email');
    await auth.signOut();
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ModelSignIn()));
  }
}
