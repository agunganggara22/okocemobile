import 'package:flutter/material.dart';

import 'welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
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
            top: 120,
            left: 20,
            right: 20,
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rico Hadeta Saputra ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0812-3456-7890',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ricohadetasaputra@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo_ok_oce.png'),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => CarouselSliderDemo()),
                      (Route<dynamic> route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}