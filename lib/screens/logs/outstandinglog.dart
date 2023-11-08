import 'package:darson_stock_trainer/screens/logs/log_utils/logtopbar.dart';
import 'package:darson_stock_trainer/screens/logs/logs.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

class OutstandingLog extends StatefulWidget {
  const OutstandingLog({Key? key}) : super(key: key);

  @override
  State<OutstandingLog> createState() => _OutstandingLogState();
}

class _OutstandingLogState extends State<OutstandingLog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Logs(), title: 'Outstanding Log', ontap: () {}),
        logtopbar(context)
      ],
    );
  }
}
