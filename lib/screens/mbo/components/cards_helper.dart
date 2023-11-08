import 'package:flutter/material.dart';

Widget searchcard(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
            end: Alignment(0, -1),
            begin: Alignment(0, -0.3))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'SCRIPT',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          )),
        ),
        Text(
          'REG',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

Widget textcard(String title, String subtitle, TextStyle textstyle, context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
            end: Alignment(0, -1),
            begin: Alignment(0, -0.3))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textstyle,
        ),
        const Spacer(),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    ),
  );
}

List mboheading = [
  'Flag',
  'Volume',
  'Price',
];
List mbpheading = [
  'Orders',
  'Volume',
  'Price',
];

List<Color> dark = [const Color(0xff87C2E9), const Color(0xffEBD297)];
List<Color> light = [const Color(0xff9AC7E5), const Color(0xffEED9A9)];
