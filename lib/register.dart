import 'package:flutter/material.dart';

import 'register2.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line to remove the debug banner
      home: Scaffold(
        backgroundColor: Color(0xFF4169E1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Color(0xFF4169E1),
                height: 120.0,
                child: Center(
                  child: Text(
                    'OK OCE INDONESIA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yuk mulai bergabung ke OK OCE',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Daftar dan lengkapi data diri anda!\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Nama Lengkap',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                              hintText: 'Nama Lengkap',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Jenis Kelamin',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                          child: DropdownButtonFormField<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: 'laki-laki',
                                child: Text('Laki-laki'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'perempuan',
                                child: Text('Perempuan'),
                              ),
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Jenis Kelamin',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Tempat, Tanggal Lahir',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                              hintText: 'Tempat, Tanggal Lahir',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Status Perkawinan',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                          child: DropdownButtonFormField<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: 'menikah',
                                child: Text('Menikah'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'belum menikah',
                                child: Text('Belum Menikah'),
                              ),
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Status Perkawinan',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Pendidikan Terakhir',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                              hintText: 'Pendidikan Terakhir',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Pekerjaan',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
                              hintText: 'Pekerjaan',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(height: 10.0),
                      SizedBox(height: 20.0),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register2Screen()),
                            );
                          },
                          child: Text(
                            'Selanjutnya',
                            style: TextStyle(
                              fontFamily: 'Poppins',
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
        ),
      ),
    );
  }
}