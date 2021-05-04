import 'package:fit_lift/exercises/abs&obliques/b_c.dart';
import 'package:fit_lift/exercises/abs&obliques/c_.dart';
import 'package:fit_lift/exercises/abs&obliques/l_c.dart';
import 'package:fit_lift/exercises/abs&obliques/m_c.dart';
import 'package:fit_lift/exercises/abs&obliques/r_c.dart';
import 'package:fit_lift/exercises/abs&obliques/s_c.dart';
import 'package:fit_lift/exercises/abs&obliques/s_k.dart';
import 'package:fit_lift/exercises/abs&obliques/t_p.dart';
import 'package:fit_lift/exercises/abs&obliques/tuck_p.dart';
import 'package:fit_lift/exercises/abs&obliques/v_c.dart';
import 'package:flutter/material.dart';

class Abs_Onliques extends StatelessWidget {
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
                'Abs & Obliques',
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
                              'Crunches',
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
                            builder: (context) => StarCrunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Star Crunches',
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
                        MaterialPageRoute(builder: (context) => VCrunches())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'V-Crunches',
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
                        MaterialPageRoute(builder: (context) => TiktokPlank())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Tiktok Plank',
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
                        MaterialPageRoute(builder: (context) => TuckPlank())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Tuck Plank',
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
                            builder: (context) => LeaningCamel())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Leaning Camel',
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
                            builder: (context) => MountainClimber())),
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Mountain Climber',
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
