import 'package:aplikasi_pengaduan_sekolah_v1/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text('dashboard / profile',
              style: Theme.of(context)
                  .textTheme
                  .copyWith(
                      titleMedium: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.grey[400]))
                  .titleMedium),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text('Akun Saya',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(titleMedium: const TextStyle(fontSize: 24))
                    .titleMedium)),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: const Offset(0, 0))
              ],
              color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  'https://picsum.photos/200/200',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(width: 30),
              Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Firga Ismayoza',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20),
                      Text('Admin | Firga Ismayoza'),
                    ],
                  ),
                  Divider(),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Icon(Icons.email_rounded),
                      SizedBox(width: 20),
                      Text('Email | admin@gmail.com'),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(width: 20),
                      Text('Aktif | 15 Maret 2024'),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.equalizer_rounded),
                      SizedBox(width: 20),
                      Text('Jumlah Pengaduan | 0'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      customElevatedButton(
                          title: 'Ubah Profile',
                          titleColor: Colors.white,
                          context: context,
                          backgroundColor: Colors.green,
                          onCallback: () {}),
                      SizedBox(width: 10),
                      customElevatedButton(
                          title: 'Ubah Kata Sandi',
                          titleColor: Colors.white,
                          context: context,
                          backgroundColor: Colors.green,
                          onCallback: () {})
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
