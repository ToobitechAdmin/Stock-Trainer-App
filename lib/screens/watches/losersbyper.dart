import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watches_card.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class LosersByPer extends StatefulWidget {
  const LosersByPer({Key? key}) : super(key: key);

  @override
  State<LosersByPer> createState() => _LosersByPerState();
}

class _LosersByPerState extends State<LosersByPer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Watches(),
            title: 'Loosers By Percentage',
            ontap: () {}),
        watchescard([], context)
      ],
    );
  }
}
