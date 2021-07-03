import 'package:fit_lift/exercises/chest&triceps/p_p.dart';
import 'package:fit_lift/exercises/chest&triceps/p_p_b.dart';
import 'package:fit_lift/exercises/chest&triceps/s_l.dart';
import 'package:fit_lift/exercises/chest&triceps/s_r.dart';
import 'package:fit_lift/exercises/chest&triceps/t_d.dart';
import 'package:fit_lift/exercises/chest&triceps/t_p.dart';
import 'package:flutter/material.dart';

class Chest_Triceps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'gymImages/chest_triceps.jpg',
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 150,
              title: Text(
                'Chest & Triceps',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              elevation: 0,
              leading: IconButton(
                onPressed: () => Navigator.pop(context, false),
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlankPressBack())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'PlankPress Back',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '14 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TricepsDips())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Tricep Dips',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '8 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PikePushUps())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Pike Push Ups',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '10 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SideBendLeft())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'SideBend Left',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '8 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SideBendRight())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'SideBend Right',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '8 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TPushUps())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'T-Push Ups',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '10 reps',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
