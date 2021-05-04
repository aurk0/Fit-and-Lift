import 'package:fit_lift/exercises/abs&obliques/a_c.dart';
import 'package:fit_lift/exercises/abs&obliques/b_c.dart';
import 'package:fit_lift/exercises/abs&obliques/c_c.dart';
import 'package:fit_lift/exercises/abs&obliques/f_k.dart';
import 'package:fit_lift/exercises/abs&obliques/h_t.dart';
import 'package:fit_lift/exercises/abs&obliques/k_n_c.dart';
import 'package:fit_lift/exercises/abs&obliques/l_d.dart';
import 'package:fit_lift/exercises/abs&obliques/r_c.dart';
import 'package:fit_lift/exercises/abs&obliques/r_i_p.dart';
import 'package:fit_lift/exercises/abs&obliques/r_t.dart';
import 'package:fit_lift/exercises/abs&obliques/s_k.dart';
import 'package:flutter/material.dart';

class Abs_Obliques extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'gymImages/abs&obliques.jpg',
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 150,
              title: Text(
                'Abs & Obliques',
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
                  color: Colors.black,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Knee Tuck Crunch',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '30 reps',
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
                            builder: (context) => ReverseCrunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Reverse Crunches',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '30 reps',
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
                            builder: (context) => BicycleCrunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Bicycle Crunches',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '30 reps',
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
                            builder: (context) => CrossCrunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Cross Crunches',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '30 reps',
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
                            builder: (context) => FlutterKicks())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Flutter kicks',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15 reps',
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
                        MaterialPageRoute(builder: (context) => HeelTouch())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Heel Touch',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15 reps',
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
                        MaterialPageRoute(builder: (context) => LegDrops())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Leg Drops',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '20 reps',
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
                            builder: (context) => RussianTwist())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Russian Twist',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '20 reps',
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
                        MaterialPageRoute(builder: (context) => ArmCircles())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Arm Circles',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15 reps',
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
                            builder: (context) => RunningInPlace())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Running In Place',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15 reps',
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
                            builder: (context) => ScissorKicks())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Scissor Kicks',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '20 reps',
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
