import 'package:flutter/material.dart';

import 'lihat_penggerak.dart'; // Pastikan ini sesuai dengan lokasi file detail screen Anda

class PenggerakScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {"name": "OK OCE CELEBES", "description": "Pariwisata"},
    {"name": "SMKN 70 JAKARTA", "description": "Pendidikan"},
    {"name": "Restu Boemi", "description": "Pemberdayaan Lingkungan"},
    {"name": "Ranu Berryano P", "description": "Budidaya Ikan Perkotaan"},
    {"name": "Ok OCE UNiROW", "description": "Kewirausahaan"},
    {"name": "OK OCE SEHAT", "description": "Kesehatan"},
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
                        builder: (context) => LihatPenggerakScreen(
                          name: events[index]["name"]!,
                          description: events[index]["description"]!,
                          imagePath: 'assets/images/logo_ok_oce.png', // Ganti dengan path gambar yang sesuai
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
                              image: AssetImage('assets/images/logo_ok_oce.png'),
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
                                Text(
                                  events[index]["description"]!,
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
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