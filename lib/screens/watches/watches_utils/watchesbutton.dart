// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class WatchesButton extends StatelessWidget {
  double width;
  VoidCallback ontap;
  String text;
  WatchesButton(
      {Key? key, required this.width, required this.ontap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.button,
            ),
            Image.asset('assets/images/icons/arrow_forward.png')
          ],
        ),
      ),
    );
  }
}
