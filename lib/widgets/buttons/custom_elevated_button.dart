import 'package:flutter/material.dart';

Widget customElevatedButton(
    {required String title,
    required BuildContext context,
    Widget? leading,
    Widget? breadcumb,
    bool? isSidebarButton = false,
    Color? backgroundColor,
    Color? titleColor,
    required Function onCallback,
    Key? key}) {
  return SizedBox(
      height: 45,
      child: ElevatedButton(
          onPressed: () {
            onCallback();
          },
          style: ElevatedButton.styleFrom(
              surfaceTintColor:
                  Theme.of(context).buttonTheme.colorScheme?.inversePrimary,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              backgroundColor: backgroundColor ?? Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Row(
            mainAxisAlignment: isSidebarButton!
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  leading ?? Container(),
                  Container(child: breadcumb),
                ],
              ),
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .copyWith(
                          bodyMedium: TextStyle(
                              color: titleColor ?? Colors.black,
                              fontWeight: FontWeight.w400))
                      .bodyMedium)
            ],
          )));
}
