import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/watches/gainersbyper.dart';
import 'package:darson_stock_trainer/screens/watches/gainersbyprice.dart';
import 'package:darson_stock_trainer/screens/watches/losersbyper.dart';
import 'package:darson_stock_trainer/screens/watches/losersbyprice.dart';
import 'package:darson_stock_trainer/screens/watches/volumeleaders.dart';
import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesbutton.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Watches extends StatelessWidget {
  const Watches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Provider.of<Link>(context, listen: false);
    return Column(
      children: [
        Text(
          'Watches',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        vertical(55),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const VolumeLeaders());
            },
            text: 'Volume Leaders'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const GainersByPrice());
            },
            text: 'Gainers By Price'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const GainersByPer());
            },
            text: 'Gainers By Percentage'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const LosersByPrice());
            },
            text: 'Losers By Price'),
        vertical(15),
        WatchesButton(
            width: 0.8,
            ontap: () {
              widget.changewidget(const LosersByPer());
            },
            text: 'Losers By Percentage'),
      ],
    );
  }
}
