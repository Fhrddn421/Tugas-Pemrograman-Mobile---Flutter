// lib/widgets/profile_card.dart

import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(student.fotoProfil),
            ),
            SizedBox(height: 16),
            Text(
              student.nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'NPM: ${student.npm}',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 8),
            _buildDetailRow('Jurusan', student.jurusan),
            _buildDetailRow('Fakultas', student.fakultas),
            _buildDetailRow(
              'Tempat, Tanggal Lahir',
              student.tempatTanggalLahir,
            ),
            _buildDetailRow('Alamat', student.alamat),
            _buildDetailRow('Jenis Kelamin', student.jenisKelamin),
            _buildDetailRow('Agama', student.agama),
            _buildDetailRow('Nomor Telepon', student.nomorTelepon),
            _buildDetailRow('Email', student.email),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
