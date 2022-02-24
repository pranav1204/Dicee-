import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: const [
          Color(0xFF000428),
          Color(0xFF004e92),
        ])),
        child: getListView());
  }
}

Future<void> launchInWebViewOrVC(String url) async {
  if (!await launch(
    url,
    forceSafariVC: true,
    forceWebView: true,
    headers: <String, String>{'my_header_key': 'my_header_value'},
  )) {
    throw 'Could not launch $url';
  }
}

Widget getListView() {
  var listView = ListView(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20, top: 50),
        child: Text(
          'My Projects',
          style: TextStyle(
            color: Color(0xFFddd6f3),
            fontWeight: FontWeight.w400,
            fontSize: 50,
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Containers(
          text: 'Dice Roller 🎲',
          press: () {
            launchInWebViewOrVC('https://github.com/dashboard');
          },
          text2: 'kotlin-dice-roller'),
      Containers(
          text: 'mi_card 🙋🏻‍',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'Flutter_mi_card'),
      Containers(
          text: 'Xylophone 🎹',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'Xylophone-Flutter-music-app'),
      Containers(
          text: 'Quizzler 🎯',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'quizzler-flutter'),
      Containers(
          text: 'BMI Calculator 💪',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'Body-mass-index-Calculator-Flutter'),
      Containers(
          text: 'Tip Time 💰',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'android-basics-kotlin-tip-calculator-app'),
      Containers(
          text: 'TicTacToe ⭕❕❌',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'android-basics-java-tic-tac-toe-app'),
      Containers(
          text: 'Dicee 🎲',
          press: () {
            launchInWebViewOrVC('https://www.google.com');
          },
          text2: 'Flutter-Dice-Roller-App'),
    ],
  );
  return listView;
}

class Containers extends StatelessWidget {
  const Containers(
      {Key? key, required this.text, required this.press, required this.text2})
      : super(key: key);

  final String text;
  final String text2;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(20),
      child: ListTile(
        hoverColor: Colors.white10,
        title: Container(
            margin: EdgeInsets.only(top: 5, bottom: 20),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF000075),
                fontSize: 30,
              ),
            )),
        subtitle: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            text2,
            style: TextStyle(
              color: Color(0xFF006FFF),
              fontSize: 17,
            ),
          ),
        ),
        trailing: Icon(
          CupertinoIcons.arrow_right,
          size: 20,
          color: Colors.black,
        ),
        onTap: press,
      ),
    );
  }
}
