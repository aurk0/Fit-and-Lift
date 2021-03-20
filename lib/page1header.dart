import 'package:flutter/material.dart';

class Page1Header extends StatelessWidget {
  const Page1Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.25 - 20,
            decoration: BoxDecoration(
                color: Colors.indigo[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
          ),
          Positioned(
            left: 45,
            child: Material(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEEK GOAL',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Set weekly goals for a better body shape',
                        style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                      )
                    ],
                  ),
                  height: 110,
                  width: 300,
                ),
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'SET A GOAL',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                        colors: [Colors.blue[900], Colors.cyan[900]])),
                margin: EdgeInsets.symmetric(horizontal: 60),
              ))
        ],
      ),
    );
  }
}
