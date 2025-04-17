// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  final Student student = Student(
    nama: 'Fahruddin Zauhari Fauzi',
    npm: '23621103',
    tempatTanggalLahir: 'Jayapura, 10 Juni 2005',
    alamat: 'Jl. Perintis I Klofkamp',
    jenisKelamin: 'Laki-laki',
    agama: 'Islam',
    nomorTelepon: '082248288488',
    email: 'idunngans123@gmail.com',
    jurusan: 'Sistem Informasi',
    fakultas: 'Ilmu Komputer',
    universitas: 'Universitas Yapis Papua',
    fotoProfil: 'assets/fotoProfil.JPG',
  );

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Biodata Diri'), centerTitle: true),
      body: Center(child: ProfileCard(student: student)),
    );
  }
}
