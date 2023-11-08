import 'package:flutter/material.dart';

Widget watchescard(dynamic data, context) {
  TextStyle textwhite = const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  TextStyle textyellow = const TextStyle(
      color: Color(0xffFBCB2E),
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 0, right: 5, top: 5, bottom: 5),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
              end: Alignment(0, -1),
              begin: Alignment(0, 0.3))),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/images/icons/add_icon.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 65,
                    child: Text(
                      'WTL',
                      style: textyellow,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-1, 0),
                    child: Text.rich(TextSpan(
                        text: 'Vol : ',
                        style: Theme.of(context).textTheme.bodyText2,
                        children: [
                          TextSpan(text: '9.68m(7.13%)', style: textwhite)
                        ])),
                  ),
                ],
              ),
              Text(
                'WTL',
                style: textwhite,
              )
            ],
          ),
          const Spacer(),
          Container(
            width: 105,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1.26',
                  style: textwhite,
                ),
                Text('-0.02(-1.56)', style: textwhite),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
