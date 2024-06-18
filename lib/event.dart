import 'package:flutter/material.dart';

import 'lihat_event.dart';

class EventScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      "name": "Pelatihan Pembuatan dan Perubahan Data NIB",
      "description": "14 Juni 2024",
      "image": "assets/images/event1.png"
    },
    {
      "name": "Literasi Finansial untuk UMKM",
      "description": "07 Juni 2024",
      "image": "assets/images/event2.png"
    },
    {
      "name": "Pelatihan Pembuatan NIB untuk UMKM",
      "description": "31 Mei 2024",
      "image": "assets/images/event3.png"
    },
    {
      "name": "Pelatihan Teknologi bersama Kak Zahrah dan Kak Fauzan",
      "description": "14 Mei 2024",
      "image": "assets/images/event4.png"
    },
    {
      "name": "WORKSHOP CANVA DESIGN FOR UMKM",
      "description": "10 Mei 2024",
      "image": "assets/images/event5.png"
    },
    {
      "name": "WORKSHOP SOAP MAKING",
      "description": "30 April 2024",
      "image": "assets/images/event6.png"
    },
    {
      "name": "Pelatihan Kue Kering bersama Oma Derose",
      "description": "02 April 2024",
      "image": "assets/images/event7.png"
    },
    {
      "name": "Belajar Canva",
      "description": "30 Maret 2024",
      "image": "assets/images/event8.png"
    },
    {
      "name": "Pelatihan Barista Bersama Lunyau Coffee",
      "description": "20 Maret 2024",
      "image": "assets/images/event9.png"
    },
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
              height: 100,
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
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              itemCount: events.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LihatEventScreen(
                          name: events[index]["name"]!,
                          description: events[index]["description"]!,
                          image: events[index]["image"]!,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            image: DecorationImage(
                              image: AssetImage(events[index]["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  events[index]["name"]!,
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today, color: Colors.grey, size: 16),
                                    SizedBox(width: 5),
                                    Text(
                                      events[index]["description"]!,
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}