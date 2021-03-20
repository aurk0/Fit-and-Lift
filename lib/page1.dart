import 'package:fit_lift/page1Body.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: buildAppBar(),
      body: Page1body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.indigo[200],
      leading: Icon(
        Icons.menu_rounded,
        color: Colors.black,
        size: 40,
      ),
    );
  }
}
