import 'package:fit_lift/page1header.dart';
import 'package:flutter/material.dart';

class Page1body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Page1Header(size: size),
          SizedBox(
            height: 50,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Legs & Butt',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('gymImages/Box1.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Abs & Obliques',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('gymImages/Box2.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Arms & Back',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('gymImages/Box3.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Inner & Outer Thighs',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('gymImages/Box4.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Chest & Triceps',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('gymImages/Box5.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Abdominals',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('gymImages/Box6.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Diet',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('gymImages/Box7.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          SizedBox(
            height: 35,
          ),
          Material(
              child: Container(
                height: 150,
                width: 300,
                child: Align(
                  child: Text(
                    'Yoga',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  alignment: Alignment(0.90, 0.90),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('gymImages/Box8.jpg'))),
              ),
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))
        ],
      ),
    );
  }
}
