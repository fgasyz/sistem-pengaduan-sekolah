import 'package:flutter/material.dart';

Widget footer(
    {required BuildContext context, required BoxConstraints constraints}) {
  return Container(
    width: constraints.maxWidth,
    padding: EdgeInsets.all(25),
    color: Theme.of(context).colorScheme.primary.withAlpha(20),
    child: Text('© 2024 - Developed by Firga Ismayoza',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .copyWith(
                titleMedium: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ))
            .titleMedium),
  );
}
