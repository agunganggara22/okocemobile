import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BerandaScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/header.jpeg',
    'assets/images/visimisi.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF4169E1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 200,
                child: Image.asset(
                  'assets/images/member_card.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imgList.map((item) => Container(
                child: Center(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                ),
              )).toList(),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 40,
            left: 50,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/logo_ok_oce.png'),
                ),
                SizedBox(width: 8),
                Text(
                  'Rico Hadeta Saputra',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}