import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watches_card.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class GainersByPer extends StatefulWidget {
  const GainersByPer({Key? key}) : super(key: key);

  @override
  State<GainersByPer> createState() => _GainersByPerState();
}

class _GainersByPerState extends State<GainersByPer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Watches(),
            title: 'Gainers By Percentage',
            ontap: () {}),
        watchescard([], context)
      ],
    );
  }
}
