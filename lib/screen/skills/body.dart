import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Color(0xFFdd5e89),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80.0),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 82,
                top: 40.0,
                bottom: 30,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Skills',
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          CurvedListItem(
            title: 'General Concept',
            text:
                'Deep OOP,  Understanding,  Git,  Debugging,  Clean Code,  Unit Test \n Solid principle,  Problem Solving',
            color: Color(0xFFdd5e89),
            nextColor: Color(0xFFE65AEC),
          ),
          CurvedListItem(
            title: 'Flutter',
            text:
                'dart,  GetX,  provider,  localization,  Unit&Widget test,  FireBase FireStore,  Animation,  Caching,  Maps,  Postman,  Swagger',
            color: Color(0xFFE65AEC),
            nextColor: Color(0xEB1617A1),
          ),
          CurvedListItem(
            title: 'Android Native',
            text: 'Java,  Kotlin,  XML,  sqlite',
            color: Color(0xEB1617A1),
            nextColor: Color(0xFF4D2871),
          ),
          CurvedListItem(
            title: 'DataBase',
            text: 'SQL',
            color: Color(0xFF4D2871),
            nextColor: Color(0xEB160D26),
          ),
          CurvedListItem(
            title: 'Others',
            text: 'Json,  API, UML,  UX',
            color: Color(0xEB160D26),
            nextColor: Color(0xEB160D26),
          ),
        ],
      ),
    );
  }
}

class CurvedListItem extends StatelessWidget {
  const CurvedListItem({
    required this.title,
    required this.color,
    required this.nextColor,
    required this.text,
  });

  final String title;
  final String text;
  final Color color;
  final Color nextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          ),
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 80.0,
          bottom: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ]),
      ),
    );
  }
}
