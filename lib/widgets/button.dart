// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  double width;
  VoidCallback ontap;
  String text;
  Button(
      {Key? key, required this.width, required this.ontap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
