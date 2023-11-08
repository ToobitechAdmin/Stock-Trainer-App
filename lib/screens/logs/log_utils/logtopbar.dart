import 'package:flutter/material.dart';

Widget logtopbar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.38,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
                end: Alignment(0, -1),
                begin: Alignment(0, -0.3))),
        child: Center(
            child: Text(
          'Account : 000',
          style: Theme.of(context).textTheme.bodyText1,
        )),
      ),
      Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: const Center(child: Text('All Script')),
      ),
      Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: const Center(child: Text('All')),
      )
    ],
  );
}
