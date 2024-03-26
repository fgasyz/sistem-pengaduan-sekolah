import '../../../modules/getX/widgetcontroller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/widgets/buttons/sidebar_button.dart';
import '../../../modules/getX/widgetcontroller/widget_controller.dart';
import '../../../../constants/route_path.dart';

class SidebarContent extends StatelessWidget {
  SidebarContent({Key? key, required this.height}) : super(key: key);

  final double height;

  final WidgetController widgetController1 = Get.find<WidgetController>();
  final WidgetController widgetController2 = Get.find<WidgetController>();
  final NavigationController navigationController =
      Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Get.find<WidgetController>(tag: 'dropdown').isDrawer.value
        ? Container(
            width: 272,
            height: height,
            decoration: BoxDecoration(color: Colors.blue.shade900, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 1))
            ]),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.white))),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/campaign.png', height: 50),
                      Text('SIPENSA',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  titleMedium: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold))
                              .titleMedium)
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('MANAJEMEN DATA',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              bodySmall: const TextStyle(
                                  color: Colors.white, fontSize: 12))
                          .bodySmall),
                ),
                Obx(
                  () => SidebarButton(
                      context: context,
                      leadingIcon: Icons.people,
                      title: 'Manajemen Anggota',
                      subtitle: 'ANGGOTA',
                      subtitle2: [
                        {
                          'id': 'Semua Anggota',
                          'callback': () {
                            navigationController
                                .navigateTo(RoutePath.authorizeMembers);
                          }
                        },
                        {
                          'id': 'Belum Terverifikasi',
                          'callback': () {
                            navigationController
                                .navigateTo(RoutePath.unauthorizeMembers);
                          }
                        },
                      ],
                      trailingIcon: widgetController1.isActive.value
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_right_rounded,
                      isActiveDropdown: widgetController1.isActive.value,
                      onCallback: widgetController1.onUpdateDropdown),
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('MAIN MENU',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              bodySmall: const TextStyle(
                                  color: Colors.white, fontSize: 12))
                          .bodySmall),
                ),
                Obx(
                  () => SidebarButton(
                    context: context,
                    leadingIcon: Icons.view_agenda_rounded,
                    title: 'Daftar Pengaduan',
                    subtitle: 'PENGADUAN',
                    subtitle2: [
                      {
                        'id': 'Semua Pengaduan',
                        'callback': () {
                          navigationController
                              .navigateTo(RoutePath.allComplaints);
                        }
                      },
                      {
                        'id': 'Masuk',
                        'callback': () {
                          navigationController
                              .navigateTo(RoutePath.incomingComplaints);
                        }
                      },
                      {
                        'id': 'Diproses',
                        'callback': () {
                          navigationController
                              .navigateTo(RoutePath.processedComplaints);
                        }
                      },
                      {
                        'id': 'Selesai',
                        'callback': () {
                          navigationController
                              .navigateTo(RoutePath.finishedComplaints);
                        }
                      },
                    ],
                    trailingIcon: widgetController2.isActive.value
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_right_rounded,
                    isActiveDropdown: widgetController2.isActive.value,
                    onCallback: widgetController2.onUpdateDropdown,
                  ),
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('PROFILE',
                      style: Theme.of(context)
                          .textTheme
                          .copyWith(
                              bodySmall: const TextStyle(
                                  color: Colors.white, fontSize: 12))
                          .bodySmall),
                ),
                SidebarButton(
                    context: context,
                    leadingIcon: Icons.person,
                    title: 'Akun Saya',
                    onCallback: () =>
                        navigationController.navigateTo(RoutePath.profile)),
                const Divider(),
                SidebarButton(
                    context: context,
                    leadingIcon: Icons.logout_rounded,
                    title: 'Keluar',
                    onCallback: () =>
                        Navigator.pushNamed(context, RoutePath.login)),
                const SizedBox(height: 40),
              ],
            ),
          )
        : Container());
  }
}
