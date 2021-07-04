import 'package:flutter/material.dart';

class Yoga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'gymImages/yogaM.jpg',
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 150,
              title: Text(
                'Yoga',
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
                  GestureDetector(
                    onTap: () {},
                    child: Material(
                      shadowColor: Colors.grey[900],
                      elevation: 20,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Morning Yoga',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                        height: 85,
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
