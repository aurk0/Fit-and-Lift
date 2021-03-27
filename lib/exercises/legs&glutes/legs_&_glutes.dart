import 'package:fit_lift/exercises/legs&glutes/d_k_l.dart';
import 'package:fit_lift/exercises/legs&glutes/d_k_r.dart';
import 'package:fit_lift/exercises/legs&glutes/f_h_l.dart';
import 'package:fit_lift/exercises/legs&glutes/f_h_r.dart';
import 'package:fit_lift/exercises/legs&glutes/h_k_j.dart';
import 'package:fit_lift/exercises/legs&glutes/k_d.dart';
import 'package:fit_lift/exercises/legs&glutes/o_t_s.dart';
import 'package:fit_lift/exercises/legs&glutes/s_.dart';
import 'package:fit_lift/exercises/legs&glutes/s_k.dart';
import 'package:fit_lift/exercises/legs&glutes/s_l_b_l.dart';
import 'package:fit_lift/exercises/legs&glutes/s_l_b_r.dart';
import 'package:flutter/material.dart';

class Legs_Glutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'gymImages/legs&glutes.jpg',
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 150,
              title: Text(
                'Legs & Glutes',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HighKneeJacks())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'High Knee Jacks',
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
                        MaterialPageRoute(builder: (context) => KneeDrive())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Knee Drive',
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
                            builder: (context) => ObliqueTwistSquat())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Oblique Twist Squat',
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
                        MaterialPageRoute(builder: (context) => Squat())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Squat',
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
                        MaterialPageRoute(builder: (context) => Squat_Kick())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Squat & Kick',
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
                        MaterialPageRoute(builder: (context) => SingleLegR())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Single Leg Bridge Right',
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
                        MaterialPageRoute(builder: (context) => SingleLegL())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Single Leg Bridge Left',
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
                        MaterialPageRoute(builder: (context) => DonkeyKR())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Donkey Kicks Right',
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
                        MaterialPageRoute(builder: (context) => DonkeyKL())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Donkey Kicks Left',
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
                        MaterialPageRoute(builder: (context) => FireHR())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Fire Hydrant Right',
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
                        MaterialPageRoute(builder: (context) => FireHL())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Fire Hydrant Left',
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
