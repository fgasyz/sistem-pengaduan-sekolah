import 'package:flutter/material.dart';

Widget aboutSection(
    {required BuildContext context, required BoxConstraints constraints}) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withAlpha(20), borderRadius: BorderRadius.circular(5)),
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Untuk apa sistem ini dibuat?',
          style: Theme.of(context)
              .textTheme
              .copyWith(
                  titleLarge: TextStyle(
                      fontSize: 30,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600))
              .titleLarge,
        ),
        SizedBox(height: 20),
        Container(
            width: constraints.maxWidth * 0.60,
            child: Text(
              'Sistem Layanan Pengaduan & Aspirasi SMP Negeri 1 Sukan ini dibuat untuk menampung pengaduan & aspirasi dari semua warga SMKN 1 Sukan. Diharapkan dengan sistem ini semua warga sekolah dapat lebih mudah untuk melaporkan pengaduan & aspirasi untuk sekolah.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .copyWith(
                      titleMedium: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ))
                  .titleMedium,
            )),
      ],
    ),
  );
}
