import 'package:flutter/material.dart';

class UsahaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 180,
            child: Container(
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
            left: 20,
            right: 20,
            top: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images/gado.jpeg'), // Ganti dengan path gambar Anda
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Gado Gado Tebet Barat ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Makanan dan Minuman',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Alamat:',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Jl. Tebet Barat No. 123',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Tambahkan logika untuk mengedit alamat
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Kontak:',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '0852777222',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              // Tambahkan logika untuk mengganti password
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Tanggal Operasi & Bergabung:',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '02 Juni 2024',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.calendar_month),
                            onPressed: () {
                              // Tambahkan logika untuk mengganti password
                            },
                          ),
                        ],
                      ),
                       // tambahkan di antara kolom alamat dan baris terakhir
SizedBox(height: 20),

                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}