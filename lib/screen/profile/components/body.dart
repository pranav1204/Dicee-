import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_profile/screen/skills/skills.dart';
import '../../project_screen/project_screen.dart';
import 'package:mi_profile/screen/education/education_screen.dart';
import 'package:mi_profile/screen/personal_info/personal_info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/bg.jpg"),
                  height: coverHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: top,
              child: SizedBox(
                child: CircleAvatar(
                  radius: profileHeight / 2,
                  backgroundImage: AssetImage("images/DP.jpg"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 90,
        ),
        ProfileMenu(
          icon: CupertinoIcons.book_fill,
          text: "Education",
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return EducationScreen();
            }));
          },
        ),
        ProfileMenu(
          icon: CupertinoIcons.rosette,
          text: "Skills",
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Skills();
            }));
          },
        ),
        ProfileMenu(
          icon: CupertinoIcons.folder_fill,
          text: "Projects",
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return ProjectScreen();
            }));
          },
        ),
        ProfileMenu(
          icon: CupertinoIcons.info_circle_fill,
          text: "Personal info",
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return PersonalInfo();
            }));
          },
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xFFE8E5E5),
          ),
          onPressed: press,
          child: Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Color(0xFF595090),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFF3D7BBD),
                    fontSize: 20,
                  ),
                ),
              ),
              Icon(
                CupertinoIcons.arrow_right,
                size: 20,
                color: Colors.black,
              )
            ],
          )),
    );
  }
}
