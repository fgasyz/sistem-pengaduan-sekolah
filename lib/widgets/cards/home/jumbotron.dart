import 'package:flutter/material.dart';
import '../../../widgets/buttons/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget jumbotron(
    {required BuildContext context, required BoxConstraints constraints}) {
  return Container(
    width: constraints.maxWidth,
    height: constraints.maxHeight * 0.70,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Selamat Datang di Sistem Layanan\nPengaduan & Aspirasi SMP Negeri 1\nSukan ',
                    style: Theme.of(context)
                        .textTheme
                        .copyWith(
                            headlineLarge: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40))
                        .headlineLarge),
                const SizedBox(height: 20),
                Text(
                  'Laporkan kepada kami jika ada Pengaduan atau pun Aspirasi yang dapat menjadi langkah awal untuk kita menjadi\nlebih baik lagi.',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          titleMedium: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ))
                      .titleMedium,
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    customElevatedButton(
                        pH: 45,
                        title: 'Pelajari Selengkapnya\t\t >>',
                        context: context,
                        bordered: const BorderSide(),
                        onCallback: () {}),
                    const SizedBox(width: 20),
                    customElevatedButton(
                        title: 'Buat Pengaduan',
                        context: context,
                        pH: 45,
                        titleColor: Colors.white,
                        backgroundColor:Colors.blue.shade900,
                        onCallback: () {})
                  ],
                )
              ],
            ),
            
            Container(
              margin: EdgeInsets.only(left: 50),
                child: Image.asset('assets/images/hero.png', height: 800, width: 600))
          ],
        ),
      ),
    ),
  );
}
