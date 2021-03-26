import 'package:flutter/material.dart';

class Legs_Glutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text(
          'Legs & Glutes',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
    );
  }
}
