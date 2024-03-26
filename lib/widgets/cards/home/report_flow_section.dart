import 'dart:math';

import 'package:aplikasi_pengaduan_sekolah_v1/widgets/cards/home/step_card.dart';
import 'package:flutter/material.dart';

Widget reportFlowSection(
    {required BuildContext context, required BoxConstraints constraints}) {
  List<Map<String, dynamic>> steps = [
    {
      'icon': Icons.login_rounded,
      'title': '1. Masuk / Daftar',
      'description':
          'Masuk ke sistem ini dengan email dan password yang sudah terdaftar.'
    },
    {
      'icon': Icons.add_circle_outline_rounded,
      'title': '2. Buat Pengaduan',
      'description':
          'Klik tombol "Buat Pengaduan" untuk membuat pengaduan yang tersedia di halaman ini.'
    },
    {
      'icon': Icons.edit_note_sharp,
      'title': '3. Lengkapi Form',
      'description':
          'Isi semua form sesuai tempat yang sudah disediakan dengan data yang benar.'
    },
    {
      'icon': Icons.post_add,
      'title': '4. Tambahkan Berkas Pendukung (Jika Ada)',
      'description':
          'Tambahkan berkas pendukung jika perlu, agar laporan bisa lebih jelas dan mudah dipahami.'
    },
    {
      'icon': Icons.send_outlined,
      'title': '5. Kirim Pengaduan',
      'description':
          'Kirim pengaduan agar nantinya bisa dicek dan ditanggapi oleh petugas dari sekolah.'
    },
    {
      'icon': Icons.check_circle_outline_rounded,
      'title': '6. Tunggu Konfirmasi',
      'description':
          'Jika laporan sudah dicek dan ditanggapi, pemberitahuan akan dikirimkan melalui email yang digunakan.'
    },
  ];

  return Container(
    color: Theme.of(context).colorScheme.primary.withAlpha(20),
    margin: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          'Bagaimana alur pengaduan?',
          style: Theme.of(context)
              .textTheme
              .copyWith(
                  titleLarge: TextStyle(
                      fontSize: 30,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600))
              .titleLarge,
        ),
        Container(
          padding: EdgeInsets.all(40),
          width: constraints.maxWidth,
          child: Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: steps
                  .map((step) => stepCard(
                      context: context,
                      constraints: constraints,
                      icon: step['icon']!,
                      title: step['title']!,
                      description: step['description']!))
                  .toList()),
        ),
      ],
    ),
  );
}
