import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final urlWdgt = [
    Containers(
        text: 'B.Tech / Computer Science',
        icon: Icons.cast_for_education_outlined,
        text2:
            'At Indus University, Ahmedabad \n\n2020 - 2024 \n\n - Core Community member of Robotics Club \n\n - Programming: Java, Python, Kotlin, c++ \n\n - Computer Science:  database, software engineering, data structure, data mining')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Education',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 600,
            viewportFraction: 1,
            autoPlay: false,
            pageSnapping: true,
            enlargeCenterPage: true,
            reverse: true,
          ),
          itemCount: urlWdgt.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlWdgt[index];
            return buildWidget(urlImage, index);
          },
        ),
      ),
    );
  }

  Widget buildWidget(Containers urlImage, int index) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: urlImage,
    );
  }
}

class Containers extends StatelessWidget {
  const Containers(
      {Key? key, required this.text, required this.icon, required this.text2})
      : super(key: key);

  final String text;
  final String text2;
  final IconData icon;

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
                color: Colors.black,
                fontSize: 25,
                height: 1.25,
              ),
            )),
        subtitle: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            text2,
            style: TextStyle(
              fontSize: 17,
              height: 1.5,
            ),
          ),
        ),
        trailing: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
