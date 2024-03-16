import 'package:aplikasi_pengaduan_sekolah_v1/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton(
      {Key? key,
      required this.context,
      required this.leadingIcon,
      this.trailingIcon,
      required this.title,
      this.subtitle,
      this.isActiveDropdown,
      this.onCallback,
      this.subtitle2})
      : super(key: key);

  final BuildContext context;
  final IconData leadingIcon;
  final IconData? trailingIcon;
  final String title;
  final String? subtitle;
  final bool? isActiveDropdown;
  final Function? onCallback;
  final List<Map<String, dynamic>>? subtitle2;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                title: Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .copyWith(
                            bodyMedium: const TextStyle(color: Colors.white))
                        .bodyMedium),
                leading: Icon(leadingIcon,
                    color: Theme.of(context)
                        .iconTheme
                        .copyWith(color: Colors.white)
                        .color),
                trailing: Icon(trailingIcon,
                    color: Theme.of(context)
                        .iconTheme
                        .copyWith(color: Colors.white)
                        .color),
                onTap: () => onCallback!()),
            (trailingIcon != null)
                ? Builder(
                    builder: (context) {
                      Size size = MediaQuery.of(context).size;
                      return isActiveDropdown!
                          ? Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  (subtitle != null)
                                      ? Text(subtitle!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .copyWith(
                                                  bodySmall: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.grey,
                                                      fontSize: 12))
                                              .bodySmall)
                                      : Container(),
                                  const SizedBox(height: 10),
                                  (subtitle2 != null)
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: subtitle2!
                                              .map((item) => Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: customElevatedButton(
                                                      title: item['id'],
                                                      context: context,
                                                      isSidebarButton: true,
                                                      onCallback: () =>
                                                          item['callback']!())))
                                              .toList())
                                      : Container()
                                ],
                              ),
                            )
                          : Container();
                    },
                  )
                : Container()
          ],
        ));
  }
}
