import 'package:darson_stock_trainer/screens/exposure/components_ex/openpositioncard.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class OpenPosition extends StatelessWidget {
  const OpenPosition({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OpenPositioncard(),
        vertical(20),
        Text(
          '1 of 1 Records',
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
