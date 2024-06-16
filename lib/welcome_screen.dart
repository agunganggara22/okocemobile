import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class CarouselSliderDemo extends StatelessWidget {
  final List<String> images = [
    'assets/images/7top.png',
    'assets/images/pendaftaran.png',
    'assets/images/pelatihan.png',
    'assets/images/pendampingan.png',
    'assets/images/perizinan.png',
    'assets/images/pemasaran.png',
    'assets/images/pelaporan-keuangan.png',
    'assets/images/permodalan.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), 
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'OK ',
                          style: TextStyle(color: Color(0xFFE3242B)),
                        ),
                        TextSpan(
                          text: 'OCE INDONESIA',
                          style: TextStyle(color: Color(0xFF1075B0)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Mari berkolaborasi dan bahu membahu mengembangkan potensi UMKM',
                    style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 340.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: images.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: item.startsWith('http') ? Image.network(
                              item,
                              fit: BoxFit.cover,
                            ) : Image.asset(
                              item,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Yuk Mulai!',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2A7084),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}