import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/logs/activitylog.dart';
import 'package:darson_stock_trainer/screens/logs/outstandinglog.dart';
import 'package:darson_stock_trainer/screens/logs/tradelog.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesbutton.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Logs extends StatelessWidget {
  const Logs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Provider.of<Link>(context, listen: false);
    return Column(
      children: [
        Text(
          'Logs',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        vertical(55),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const ActivityLog());
            },
            text: 'Activity Log'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const OutstandingLog());
            },
            text: 'Outstanding Log'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const TradeLog());
            },
            text: 'Trade Log'),
      ],
    );
  }
}
