import 'package:flutter/material.dart';

Widget stepCard(
    {required BuildContext context,
    required IconData icon,
    required String title,
    required String description,
    required BoxConstraints constraints}) {
  return Container(
    width: 500,
    height: 300,
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
    child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                child: Icon(icon,
                    size: 30,
                    color: Theme.of(context)
                        .iconTheme
                        .copyWith(color: Colors.white)
                        .color),
                minRadius: 30,
                backgroundColor: Theme.of(context).colorScheme.primary),
            SizedBox(height: 20),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        titleMedium: TextStyle(
                      fontSize: 16,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600
                    ))
                    .titleMedium),
            SizedBox(height: 20),
            Text(description,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        titleMedium: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ))
                    .titleMedium),
          ],
        )),
  );
}
