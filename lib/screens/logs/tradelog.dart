import 'package:darson_stock_trainer/screens/logs/log_utils/logtopbar.dart';
import 'package:darson_stock_trainer/screens/logs/logs.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class TradeLog extends StatefulWidget {
  const TradeLog({Key? key}) : super(key: key);

  @override
  State<TradeLog> createState() => _TradeLogState();
}

class _TradeLogState extends State<TradeLog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(backpage: const Logs(), title: 'Trade Log', ontap: () {}),
        logtopbar(context)
      ],
    );
  }
}
