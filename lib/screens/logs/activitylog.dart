import 'package:darson_stock_trainer/screens/logs/logs.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:flutter/material.dart';

import 'log_utils/logtopbar.dart';

class ActivityLog extends StatefulWidget {
  const ActivityLog({Key? key}) : super(key: key);

  @override
  State<ActivityLog> createState() => _ActivityLogState();
}

class _ActivityLogState extends State<ActivityLog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
            backpage: const Logs(), title: 'Activity Log', ontap: () {}),
        logtopbar(context)
      ],
    );
  }
}
