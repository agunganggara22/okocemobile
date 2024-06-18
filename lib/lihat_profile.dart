import 'package:flutter/material.dart';

class LihatProfileScreen extends StatelessWidget {
  final String nama;
  final String email;
  final String noHp;
  final String alamat;
  final String fotoProfil;
  final String jenisKelamin;
  final String tempatLahir;
  final String tanggalLahir;
  final String agama;
  final String statusPernikahan;
  final String pendidikanTerakhir;
  final String pekerjaan;

  LihatProfileScreen({
    required this.nama,
    required this.email,
    required this.noHp,
    required this.alamat,
    required this.fotoProfil,
    required this.jenisKelamin,
    required this.tempatLahir,
    required this.tanggalLahir,
    required this.agama,
    required this.statusPernikahan,
    required this.pendidikanTerakhir,
    required this.pekerjaan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(fotoProfil),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Nama'),
            subtitle: Text(nama),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text(email),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('No. HP'),
            subtitle: Text(noHp),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Alamat'),
            subtitle: Text(alamat),
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Jenis Kelamin'),
            subtitle: Text(jenisKelamin),
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Tempat Lahir'),
            subtitle: Text(tempatLahir),
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Tanggal Lahir'),
            subtitle: Text(tanggalLahir),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Agama'),
            subtitle: Text(agama),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Status Pernikahan'),
            subtitle: Text(statusPernikahan),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Pendidikan Terakhir'),
            subtitle: Text(pendidikanTerakhir),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Pekerjaan'),
            subtitle: Text(pekerjaan),
          ),
        ],
      ),
    );
  }
}