import 'package:flutter/material.dart';

class LihatEventScreen extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  LihatEventScreen({required this.name, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, fit: BoxFit.cover),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Add more details here if needed
            ],
          ),
        ),
      ),
    );
  }
}