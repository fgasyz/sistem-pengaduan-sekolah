import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Dialog {
  Dialog({required this.context, required this.type, required this.title, required this.description});

  final DialogType type;
  final String title;
  final String description;
  BuildContext context;

  Future actionDialog() {
    return AwesomeDialog(
      context: context,
      animType: AnimType.bottomSlide,
      headerAnimationLoop: false,
      dialogType: type,
      showCloseIcon: true,
      title: title,
      desc: description,
      btnOkOnPress: () {
        debugPrint('OnClcik');
      },
      btnOkIcon: Icons.check_circle,
      onDismissCallback: (type) {},
    ).show();
  }
}
