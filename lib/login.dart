import 'package:flutter/material.dart';

import 'lupapassword.dart';
import 'main.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget {
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
            top: 50,
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
              height: 370,
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
                    'Yuk mulai bergabung ke OK OCE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Masukkan Email / No. Handphone dan Password anda!',
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
                  SizedBox(height: 10),
                  Text(
                    'Password',
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Belum punya akun?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RegisterScreen()),
                              );
                            },
                            child: Text(
                              'Registrasi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LupaPasswordScreen()),
                          );
                        },
                        child: Text(
                          'Lupa Password?',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Login',
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