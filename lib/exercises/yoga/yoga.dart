import 'package:fit_lift/exercises/yoga/b.dart';
import 'package:flutter/material.dart';

class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  String morningItems;
  List<Map> morningYoga = [
    {'id': '1', 'name': 'Bridge', 'time': '15 secs'},
    {'id': '2', 'name': 'Cobra', 'time': '15 secs'},
    {'id': '3', 'name': 'Reverse Warrior', 'time': '20 secs'},
    {'id': '4', 'name': 'Seated Side Bends', 'time': '20 secs'},
    {'id': '5', 'name': 'The Tree', 'time': '20 secs'},
  ];
  String weightlossItems;
  List<Map> weightlossYoga = [
    {'id': '1', 'name': 'Cow Pose', 'time': '30 secs'},
    {'id': '2', 'name': 'Side Planks', 'time': '30 secs'},
    {'id': '3', 'name': 'Warrior 1', 'time': '25 secs'},
    {'id': '4', 'name': 'Warrior 2', 'time': '25 secs'},
    {'id': '5', 'name': 'Win Relieving Pose', 'time': '30 secs'},
  ];
  String flexibilityItems;
  List<Map> flexibilityYoga = [
    {'id': '1', 'name': 'Boat Pose', 'time': '27 secs'},
    {'id': '2', 'name': 'Bow Pose', 'time': '27 secs'},
    {'id': '3', 'name': 'Camel Pose', 'time': '30 secs'},
    {'id': '4', 'name': 'Extended Side Angle', 'time': '30 secs'},
    {'id': '5', 'name': 'Upward Plank', 'time': '27 secs'},
    {'id': '6', 'name': 'Windmil Pose', 'time': '30 secs'},
  ];
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
                  Material(
                    shadowColor: Colors.grey[900],
                    elevation: 20,
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DropdownButton(
                            dropdownColor: Colors.grey[100].withOpacity(0.85),
                            items: morningYoga.map((values) {
                              return DropdownMenuItem(
                                value: values['id'].toString(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(values['name']),
                                    Text(values['time'])
                                  ],
                                ),
                              );
                            }).toList(),
                            hint: Text('Morning Yoga'),
                            value: morningItems,
                            onChanged: (names) {
                              setState(() {
                                morningItems = names;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bridge(
                                            name: names,
                                          )));
                            },
                            icon: Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.grey[700],
                            ),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      height: 85,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    shadowColor: Colors.grey[900],
                    elevation: 20,
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DropdownButton(
                            dropdownColor: Colors.grey[100].withOpacity(0.85),
                            items: weightlossYoga.map((values) {
                              return DropdownMenuItem(
                                value: values['id'].toString(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(values['name']),
                                    Text(values['time'])
                                  ],
                                ),
                              );
                            }).toList(),
                            hint: Text('Weightloss Yoga'),
                            value: weightlossItems,
                            onChanged: (newValue) {
                              setState(() {
                                weightlossItems = newValue;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.grey[700],
                            ),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      height: 85,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    shadowColor: Colors.grey[900],
                    elevation: 20,
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DropdownButton(
                            dropdownColor: Colors.grey[100].withOpacity(0.85),
                            items: flexibilityYoga.map((values) {
                              return DropdownMenuItem(
                                value: values['id'].toString(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(values['name']),
                                    Text(values['time'])
                                  ],
                                ),
                              );
                            }).toList(),
                            hint: Text('Flexibility Yoga'),
                            value: flexibilityItems,
                            onChanged: (newValue) {
                              setState(() {
                                flexibilityItems = newValue;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.grey[700],
                            ),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      height: 85,
                      width: double.infinity,
                      color: Colors.white,
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
