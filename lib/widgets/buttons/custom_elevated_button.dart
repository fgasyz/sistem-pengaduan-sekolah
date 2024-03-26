import 'package:flutter/material.dart';

Widget customElevatedButton(
    {required String title,
    required BuildContext context,
    Widget? leading,
    Widget? breadcumb,
    bool? isSidebarButton = false,
    Color? backgroundColor,
    Color? titleColor,
    double? width,
    double? height,
    double? pV,
    double? pH,
    BorderSide? bordered,
    TextStyle? textStyle,
    required Function onCallback,
    Key? key}) {
  return SizedBox(
      height: height ?? 45,
      width: width,
      child: ElevatedButton(
          onPressed: () {
            onCallback();
          },
          style: ElevatedButton.styleFrom(
              surfaceTintColor:
                  Theme.of(context).buttonTheme.colorScheme?.inversePrimary,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(
                  vertical: pV ?? 20, horizontal: pH ?? 10),
              backgroundColor: backgroundColor ?? Colors.transparent,
              shape: RoundedRectangleBorder(
                side: bordered ?? BorderSide.none,
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
                  style: textStyle ??
                      Theme.of(context)
                          .textTheme
                          .copyWith(
                              bodyMedium: TextStyle(
                                  color: titleColor ?? Colors.black,
                                  fontWeight: FontWeight.w400))
                          .bodyMedium)
            ],
          )));
}
