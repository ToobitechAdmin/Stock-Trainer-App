import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'mbo/components/cards_helper.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? textwhite = const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'montserrat',
        color: Colors.white);
    return Column(
      children: [
        Text(
          'MESSAGES',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        vertical(20),
        textcard(
            'PKT 16:09:06 - Welcome To Mobile Trading', '', textwhite, context),
      ],
    );
  }
}
