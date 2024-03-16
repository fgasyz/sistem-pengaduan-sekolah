import 'package:aplikasi_pengaduan_sekolah_v1/modules/getX/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarContent extends StatelessWidget {
  const NavbarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0))
      ], color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: IconButton(
                  icon: Icon(Icons.menu_open_rounded, size: 30),
                  onPressed: () {
                    Get.find<WidgetController>().onChangeDrawer();
                  })),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Stack(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications,
                                    color: Theme.of(context).iconTheme.color)),
                            Positioned(
                                right: 7,
                                top: 6,
                                child: CircleAvatar(
                                    maxRadius: 6,
                                    backgroundColor: Colors.yellow[700]))
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(color: Colors.grey[400], width: 2, height: 20),
                    ],
                  )),
              Text(
                'Hallo, Firga',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(width: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network('https://picsum.photos/300/300',
                      width: 50, height: 50))
            ],
          )
        ],
      ),
    );
  }
}
