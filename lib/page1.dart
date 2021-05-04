import 'package:fit_lift/drawer/nav_drawer.dart';
import 'package:fit_lift/page1Body.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: buildAppBar(),
      drawer: Drawer(
        child: NavDrawer(),
      ),
      body: Page1body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.indigo[300],
      leading: Builder(builder: (context) {
        return IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 45,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            });
      }),
    );
  }
}
