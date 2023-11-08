import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watches_card.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class VolumeLeaders extends StatefulWidget {
  const VolumeLeaders({Key? key}) : super(key: key);

  @override
  State<VolumeLeaders> createState() => _VolumeLeadersState();
}

class _VolumeLeadersState extends State<VolumeLeaders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Watches(), title: 'Volume Leaders', ontap: () {}),
        watchescard([], context)
      ],
    );
  }
}
