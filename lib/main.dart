import 'package:flutter/material.dart';

import 'beranda.dart';
import 'event.dart';
import 'penggerak.dart';
import 'profile.dart';
import 'splash_screen.dart';
import 'usaha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OK OCE INDONESIA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set as initial screen
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    BerandaScreen(),
    PenggerakScreen(),
    UsahaScreen(),
    EventScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: 'Penggerak',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Usaha',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xCC4169E1),
        unselectedItemColor: Color(0xFF757575),
        onTap: _onItemTapped,
      ),
    );
  }
}