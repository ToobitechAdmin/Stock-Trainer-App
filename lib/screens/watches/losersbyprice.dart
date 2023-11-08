import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watches_card.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class LosersByPrice extends StatefulWidget {
  const LosersByPrice({Key? key}) : super(key: key);

  @override
  State<LosersByPrice> createState() => _LosersByPriceState();
}

class _LosersByPriceState extends State<LosersByPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Watches(), title: 'Loosers By Price', ontap: () {}),
        watchescard([], context)
      ],
    );
  }
}
