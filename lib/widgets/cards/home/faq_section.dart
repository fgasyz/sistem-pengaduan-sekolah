import 'package:flutter/material.dart';

Widget faqSection(
    {required BuildContext context, required BoxConstraints constraints}) {
  List<Map<String, dynamic>> steps = [
    {
      'title': 'Apa itu Aplikasi Pengaduan SMPN 1 Sukan ?',
      'description':
          'Seperti yang sudah dijelaskan diatas tadi, aplikasi ini dibuat untuk menampung pengaduan & aspirasi dari semua warga SMPN 1 Sukan.'
    },
    {
      'title':
          'Apakah bentuk respon yang diberikan kepada pelapor atas pengaduan yang disampaikan ?',
      'description':
          'Respon akan diberikan dalam bentuk tanggapan dan konfirmasi dari petugas apakan laporan akan diterima atau ditolak.'
    },
    {
      'title': 'Apakah saya bisa mengubah laporan yang sudah saya kirimkan ?',
      'description':
          'Tentu. Laporan dapat kamu ubah jika belum direspon atau masih dalam status "pending".'
    },
    {
      'title':
          'Berapa lama respon atas pengaduan yang disampaikan diberikan kepada pelapor ?',
      'description':
          'Kecepatan respon tergantung pada banyaknya orang yang mengirim laporan. Tapi, jangan khawatir jika sudah direspon maka pemberitahuan akan kami kirimkan ke email kamu.'
    },
    {
      'title':
          'Apakah pengaduan yang saya berikan akan selalu mendapatkan respon ?',
      'description': 'Tentu saja. Pasti akan selalu mendapatkan respon.'
    },
    {
      'title':
          'Bagaimana jika saya belum paham tentang sistem ini dan ingin bertanya lebih lanjut ?',
      'description':
          'Kamu bisa kirim pertanyaan ke email kami : rpla.smpn1sukan@gmail.com'
    },
  ];
  return Container(
    color: Theme.of(context).colorScheme.primary.withAlpha(20),
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          'Frequently Asked Question',
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: steps
                    .map((item) => Container(
                        width: constraints.maxWidth,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.symmetric(
                                horizontal: BorderSide(
                                    color: Colors.grey.shade600, width: 0.5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item['title'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .copyWith(
                                            titleMedium: TextStyle(
                                                fontSize: 16,
                                                color: Colors.blue.shade900,
                                                fontWeight: FontWeight.w600))
                                        .titleMedium),
                                Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Theme.of(context)
                                        .iconTheme
                                        .copyWith(color: Colors.grey.shade700)
                                        .color)
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(item['description'])
                          ],
                        )))
                    .toList()))
      ],
    ),
  );
}
