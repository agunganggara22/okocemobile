import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'login.dart';

class Register2Screen extends StatelessWidget {
  Future<void> _getImageFromGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    
    if (pickedImage != null) {
      // Menampilkan gambar yang dipilih ke dalam form
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(pickedImage.path)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  // Daftar kecamatan
  final List<String> kecamatanList = [
    'Cakung',
    'Kelapa Gading',
    'Tanjung Priok',
    'Kemayoran',
    'Tanah Abang',
    'Menteng',
    'Gambir',
    'Kebayoran Baru',
    'Pancoran',
    'Tebet',
    'Pasar Minggu',
    'Mampang Prapatan',
    'Setiabudi',
    'Palmerah',
    'Cilandak',
    'Jagakarsa',
    'Kramat Jati',
    'Pasar Rebo',
    'Duren Sawit',
    'Kebayoran Lama',
    'Senayan',
    'Ciputat',
    'Pamulang',
    // Tambahkan kecamatan lainnya sesuai kebutuhan
  ];

  // Daftar kelurahan
  final List<String> kelurahanList = [
    'Rawamangun',
    'Pulo Gadung',
    'Sunter Agung',
    'Gunung Sahari',
    'Karet Tengsin',
    'Kebon Melati',
    'Menteng',
    'Gondangdia',
    'Senayan',
    'Kramat Pela',
    'Pondok Indah',
    'Cipete',
    'Tanjung Duren',
    'Slipi',
    'Pal Merah',
    'Kebon Jeruk',
    'Kelapa Dua',
    'Grogol',
    'Tomang',
    'Cipinang',
    'Pondok Bambu',
    'Pondok Kelapa',
    'Rawa Jati',
    'Kalibata',
    'Cikini',
    'Kuningan',
    'Pancoran Mas',
    'Sukmajaya',
    'Bojongsari',
    // Tambahkan kelurahan lainnya sesuai kebutuhan
  ];

  // Daftar kabupaten/kota
  final List<String> kabupatenList = [
    'Jakarta Timur',
    'Jakarta Utara',
    'Jakarta Pusat',
    'Jakarta Selatan',
    'Jakarta Barat',
    'Bogor',
    'Depok',
    'Tangerang',
    'Bekasi',
    'Bandung',
    'Semarang',
    'Surabaya',
    'Medan',
    'Palembang',
    'Makassar',
    'Denpasar',
    'Yogyakarta',
    'Malang',
    'Balikpapan',
    'Banjarmasin',
    'Pontianak',
    'Samarinda',
    'Palu',
    'Mataram',
    'Kupang',
    // Tambahkan kabupaten/kota lainnya sesuai kebutuhan
  ];

  // Daftar provinsi
  final List<String> provinsiList = [
    'DKI Jakarta',
    'Jawa Barat',
    'Jawa Tengah',
    'Jawa Timur',
    'Banten',
    'Bali',
    'Sumatera Utara',
    'Sumatera Selatan',
    'Kalimantan Timur',
    'Sulawesi Selatan',
    'Nusa Tenggara Barat',
    'Nusa Tenggara Timur',
    'Aceh',
    'Riau',
    'Lampung',
    'Bengkulu',
    'Bangka Belitung',
    'Gorontalo',
    'Sulawesi Utara',
    'Sulawesi Tengah',
    'Sulawesi Tenggara',
    'Maluku',
    'Maluku Utara',
    'Papua',
    'Papua Barat',
    'Kalimantan Barat',
    'Kalimantan Selatan',
    'Kalimantan Tengah',
    'Kalimantan Utara',
    'Jambi',
    'Sumatera Barat',
    'Kepulauan Riau',
    'Sulawesi Barat',
    // Tambahkan provinsi lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
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
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _getImageFromGallery(context),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6E6E6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 4.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.photo),
                                      SizedBox(width: 10),
                                      Text(
                                        'Pilih Foto',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'No Handphone',
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
                                  hintText: 'No Handphone',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Email',
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
                              hintText: 'Email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kecamatan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                DropdownButtonFormField<String>(
                                  value: null,
                                  items: kecamatanList.map((kecamatan) {
                                    return DropdownMenuItem<String>(
                                      value: kecamatan,
                                      child: Text(kecamatan),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    // Tambahkan kode yang ingin dijalankan ketika pilihan kecamatan berubah
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Kecamatan',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kelurahan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                DropdownButtonFormField<String>(
                                  value: null,
                                  items: kelurahanList.map((kelurahan) {
                                    return DropdownMenuItem<String>(
                                      value: kelurahan,
                                      child: Text(kelurahan),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    // Tambahkan kode yang ingin dijalankan ketika pilihan kelurahan berubah
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Kelurahan',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kabupaten/Kota',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                DropdownButtonFormField<String>(
                                  value: null,
                                  items: kabupatenList.map((kabupaten) {
                                    return DropdownMenuItem<String>(
                                      value: kabupaten,
                                      child: Text(kabupaten),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    // Tambahkan kode yang ingin dijalankan ketika pilihan kabupaten/kota berubah
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Kabupaten',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Provinsi',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                DropdownButtonFormField<String>(
                                  value: null,
                                  items: provinsiList.map((provinsi) {
                                    return DropdownMenuItem<String>(
                                      value: provinsi,
                                      child: Text(provinsi),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    // Tambahkan kode yang ingin dijalankan ketika pilihan provinsi berubah
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Provinsi',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Apakah Anda Sudah Memiliki Usaha?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: [
                          DropdownMenuItem<String>(
                            value: 'sudah',
                            child: Text('Sudah'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'belum',
                            child: Text('Belum'),
                          ),
                        ],
                        onChanged: (value) {},
                        hint: Text('Pilihan'),
                      ),
                      SizedBox(height: 20.0),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()), // Gantilah LoginPage dengan nama kelas login.dart
                            );
                          },
                          child: Text(
                            'Registrasi',
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