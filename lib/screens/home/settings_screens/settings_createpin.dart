import 'package:darson_stock_trainer/screens/home/settings.dart';
import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class SettingCreatePin extends StatelessWidget {
  const SettingCreatePin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextStyle yellowtext = TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 17);
    TextStyle whitetext = const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            back(const Settings(), context),
            Text(
              'Create Pin',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            horizental(10),
          ],
        ),
        vertical(30),
        Text(
          'Pin - Personal Identification Number:',
          style: yellowtext,
        ),
        vertical(5),
        Text(
          'It is a 4-digit numeric secret code used as an extra Security to place orders through this App. ',
          style: whitetext,
        ),
        vertical(20),
        Text(
          'To generate your pin:',
          style: yellowtext,
        ),
        rowView('Use "Get Pass Code" button below.', context),
        rowView('Input correct password, email address add mobile number.',
            context),
        rowView('Press the button "Get Pass Code".', context),
        rowView('12-digit numeric Pass Code will be send via SMS or email.',
            context),
        rowView('This Pass Code will be valid for 30 minutes.', context),
        rowView('Within this time, go to "GET PIN" section.', context),
        rowView(
            'Use this Pass Code to create your desired 4-digit numeric Pin.',
            context),
        vertical(75),
        Button(width: 0.8, ontap: (() {}), text: 'OK')
      ],
    );
  }
}

Widget rowView(String text, context) {
  TextStyle whitetext = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15);
  return Row(
    children: [
      Icon(
        Icons.arrow_right,
        color: Theme.of(context).primaryColor,
      ),
      horizental(10),
      Expanded(
        child: Text(
          text,
          style: whitetext,
        ),
      )
    ],
  );
}
