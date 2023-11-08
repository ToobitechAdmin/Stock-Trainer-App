import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget back(Widget value, context) {
  final widget = Provider.of<Link>(context, listen: true);
  return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        // Navigator.pop(context);
        widget.changewidget(value);
      },
      icon: Icon(
        Icons.arrow_back_ios_rounded,
        color: Theme.of(context).primaryColor,
      ));
}
