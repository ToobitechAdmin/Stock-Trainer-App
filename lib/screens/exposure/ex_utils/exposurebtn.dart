import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExposureBtn extends StatelessWidget {
  double width;
  VoidCallback ontap;
  String text;
  Color bgcolor;
  ExposureBtn(
      {Key? key,
      required this.text,
      required this.width,
      required this.ontap,
      required this.bgcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
