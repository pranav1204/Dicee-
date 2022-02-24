import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  Future<void> launchUniversalLinkIos(String url) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mr.sheth6505@gmail.com',
    );

    launch(emailLaunchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: getListView()),
    );
  }

  Widget getListView() {
    var listView = ListView(
      children: [
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                hoverColor: Colors.white10,
                title: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      'Pranav Sheth',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000075),
                        fontSize: 30,
                      ),
                    )),
                subtitle: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Color(0xFF006FFF),
                      fontSize: 17,
                    ),
                  ),
                ),
                trailing: Image.asset(
                  "images/profile.jpg",
                  height: 90,
                  width: 90,
                ),
                onTap: () {},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Summary',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF000075),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text(
                      'Computer Science Student passionate about Mobile Programming(Android native&Flutter) Looking for opportunities as a software developer with an expert team of developers who will help advance my career progression to senior positions in the future.',
                      style: TextStyle(
                        color: Color(0xFF3B3939),
                        fontSize: 17,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Objectives',
                      style: TextStyle(
                        color: Color(0xFF000075),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text(
                      'Looking for an opportunity with a professional team to gain experience in Testing Flutter apps and design patterns',
                      style: TextStyle(
                        color: Color(0xFF3B3939),
                        fontSize: 17,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hobby',
                      style: TextStyle(
                        color: Color(0xFF000075),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Playing Video Games & Casio',
                        style: TextStyle(
                          color: Color(0xFF3B3939),
                          fontSize: 17,
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Languages',
                      style: TextStyle(
                        color: Color(0xFF000075),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hindi: Native \n\nEnglish: Very Good',
                      style: TextStyle(
                        color: Color(0xFF3B3939),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Social Links',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF000075),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    title: Text(
                      'mr.sheth6505@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      launchUniversalLinkIos('mr.sheth6505@gmail.com');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+91-6352339572',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      makePhoneCall('+916352339572');
                    },
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                      width: 20,
                      height: 20,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Connect with me on linkedin',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      launchInWebViewOrVC(
                          'https://www.linkedin.com/in/pranav-sheth-4996b9202/');
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/img.png',
                      width: 25,
                      height: 25,
                    ),
                    title: Text(
                      'Show my Work my on Github',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      launchInWebViewOrVC(
                          'https://github.com/pranav1204?tab=repositories');
                    },
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
    return listView;
  }
}
