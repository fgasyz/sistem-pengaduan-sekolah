import 'package:flutter/material.dart';

Widget customTextField(
    {required BuildContext context,
    required String placeholder,
    bool obsecure = false}) {
  return SizedBox(
      child: TextField(
    obscureText: obsecure,
    autocorrect: false,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      hintText: placeholder,
      // ignore: prefer_const_constructors
      hintStyle: Theme.of(context).textTheme.copyWith(bodyMedium: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal)).bodySmall,
      border: const OutlineInputBorder(),
    ),
  ));
}
