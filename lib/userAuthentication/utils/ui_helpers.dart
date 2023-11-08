import 'package:flutter/material.dart';

Widget dontacoount(String text1, String text2, VoidCallback ontap, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text1,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      InkWell(
        onTap: ontap,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 15, top: 15, bottom: 15),
          child: Text(text2, style: Theme.of(context).textTheme.bodyText2),
        ),
      )
    ],
  );
}
