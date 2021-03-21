import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/services/auth_provider_facebook.dart';
import 'package:fit_lift/services/auth_provider_google.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

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
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
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
                AuthHelper1.logOut();
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
}
