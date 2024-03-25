import "package:flutter/material.dart";

Widget customDropdownButton(
    {required BuildContext context, required List<String> items}) {
  return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(5),color: Colors.blueAccent),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(5),
        iconEnabledColor: Colors.white,
        dropdownColor: Colors.blueAccent,
        style: const TextStyle(color: Colors.white),
        items: items.map<DropdownMenuItem>((item) {
          return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left:10),
                child: Text(item,
                    style: Theme.of(context)
                        .textTheme
                        .copyWith(
                            bodySmall: TextStyle(
                              fontSize: 12,
                                fontWeight: FontWeight.normal))
                        .bodySmall),
              ));
        }).toList(),
        value: items[0],
        onChanged: (value) {},
      ));
}
