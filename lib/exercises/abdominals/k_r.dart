import 'package:flutter/material.dart';

class KneeRises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text(
          'Knee Rises',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            'https://media.giphy.com/media/PHCDgS2FbKc3ATIJar/giphy.gif'))),
                height: 270,
                width: double.infinity,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Slowly raise your knees upward toward your chest while maintaining braced lower abs and a hollowed position and keep the dumbbell pinched between your feet. Slowly lower your legs to return to the bottom position.",
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: RaisedButton.icon(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                    label: Text(
                      'Start',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
