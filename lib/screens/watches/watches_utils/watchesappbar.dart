// ignore_for_file: must_be_immutable

import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class Refreshappbar extends StatelessWidget {
  Widget backpage;
  String title;
  VoidCallback ontap;
  bool? isback;
  Refreshappbar(
      {Key? key,
      required this.backpage,
      required this.title,
      required this.ontap,
      this.isback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (isback == false) ? horizental(0) : back(backpage, context),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        IconButton(
            onPressed: ontap,
            icon: Icon(
              Icons.refresh,
              size: 30,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }
}
