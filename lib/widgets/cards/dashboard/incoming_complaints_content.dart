import 'package:flutter/material.dart';
import '../../tables/complaint_content_table.dart';

class IncomingComplaintsContent extends StatelessWidget {
const IncomingComplaintsContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
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
                            fontWeight: FontWeight.w400, fontSize: 16, color: Colors.grey[400]))
                    .titleMedium),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text('Pengaduan yang masuk',
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(titleMedium: const TextStyle(fontSize: 24))
                      .titleMedium)),
          Expanded(
              child: Container(
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
                child: const ComplaintContentTable()
          ))
        ]),
      );
  }
}