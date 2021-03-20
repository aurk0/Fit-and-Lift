import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_lift/services/auth_provider_google.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Column(children: [
      Container(
          height: 250,
          width: double.infinity,
          color: Colors.grey[900],
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 100,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(user.photoURL),
                ),
              ),
              Positioned(
                top: 170,
                left: 40,
                child: Text(
                  'Name: ' + user.displayName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Positioned(
                top: 200,
                left: 40,
                child: Text(
                  'E-mail: ' + user.email,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          )),
      Container(
        height: 300,
        width: double.infinity,
        color: Colors.green,
        child: Column(
          children: [
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
