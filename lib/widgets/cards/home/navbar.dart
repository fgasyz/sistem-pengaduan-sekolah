import 'package:aplikasi_pengaduan_sekolah_v1/constants/route_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/buttons/custom_elevated_button.dart';

Widget navbar(
    {required BuildContext context, required BoxConstraints constraints}) {
  return Container(
    width: constraints.maxWidth,
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    child: Stack(alignment: Alignment.center, children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text('LOGO',
              style: Theme.of(context)
                  .textTheme
                  .copyWith(
                      titleMedium: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600))
                  .titleMedium)),
      Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Beranda',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          titleMedium: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))
                      .titleMedium),
              const SizedBox(width: 40),
              Text('Tentang',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          titleMedium: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))
                      .titleMedium),
              const SizedBox(width: 40),
              Text('Alur Pengaduan',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          titleMedium: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))
                      .titleMedium),
              const SizedBox(width: 40),
              Text('FAQ',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          titleMedium: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))
                      .titleMedium)
            ],
          )),
      Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              customElevatedButton(
                  pH: 40,
                  title: 'Register',
                  textStyle: Theme.of(context)
                      .textTheme
                      .copyWith(
                          bodyMedium: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600))
                      .bodyMedium,
                  context: context,
                  backgroundColor:Colors.blue.shade900,
                  onCallback: () {
                    navigator?.pushNamed(RoutePath.register);
                  }),
              const SizedBox(width: 10),
              customElevatedButton(
                  pH: 45,
                  title: 'Login',
                  textStyle: Theme.of(context)
                      .textTheme
                      .copyWith(
                          bodyMedium: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600))
                      .bodyMedium,
                  context: context,
                  backgroundColor:Colors.blue.shade900,
                  onCallback: () {
                    navigator?.pushNamed(RoutePath.login);
                  })
            ],
          ))
    ]),
  );
}
