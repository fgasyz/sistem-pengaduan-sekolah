import 'package:flutter/material.dart';
import '../../tables/complaint_content_table.dart';

class AllComplaintsContent extends StatelessWidget {
  const AllComplaintsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text('dashboard / main menu / daftar pengaduan',
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
            child: Text('Semua Pengaduan',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(titleMedium: const TextStyle(fontSize: 24))
                    .titleMedium)),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: Container(
              height: 120,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum Dibaca',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              titleMedium: const TextStyle(
                                  fontWeight: FontWeight.normal))
                          .titleMedium),
                  const SizedBox(height: 5),
                  Text('20',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              headlineLarge: TextStyle(
                                  color: Colors.red[600],
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold))
                          .headlineLarge)
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 120,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Diproses',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              titleMedium: const TextStyle(
                                  fontWeight: FontWeight.normal))
                          .titleMedium),
                  const SizedBox(height: 5),
                  Text('10',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              headlineLarge: TextStyle(
                                  color: Colors.green[600],
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold))
                          .headlineLarge)
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 120,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Selesai',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              titleMedium: const TextStyle(
                                  fontWeight: FontWeight.normal))
                          .titleMedium),
                  const SizedBox(height: 5),
                  Text('5',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              headlineLarge: TextStyle(
                                  color: Colors.blue[600],
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold))
                          .headlineLarge)
                ],
              ),
            )),
          ],
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          child: const ComplaintContentTable(),
        ))
      ]),
    );
  }
}
