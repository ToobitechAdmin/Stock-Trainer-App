import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watches_card.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class GainersByPrice extends StatefulWidget {
  const GainersByPrice({Key? key}) : super(key: key);

  @override
  State<GainersByPrice> createState() => _GainersByPriceState();
}

class _GainersByPriceState extends State<GainersByPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Watches(), title: 'Gainers By Price', ontap: () {}),
        watchescard([], context)
      ],
    );
  }
}
