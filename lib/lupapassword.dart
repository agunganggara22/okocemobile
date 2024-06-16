import 'package:flutter/material.dart';

import 'login.dart';

class LupaPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4169E1),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mari berkolaborasi dan bahu membahu',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'mengembangkan potensi UMKM!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo-white.png',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 270,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lupa Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Masukkan Email / No. Handphone untuk Reset Password Anda!',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email / No. Handphone',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 1),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email / No. Handphone',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
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
                          'Send Reset Password Link',
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
            ),
          ),
        ],
      ),
    );
  }
}