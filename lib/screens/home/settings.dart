import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/home/home.dart';
import 'package:darson_stock_trainer/screens/home/settings_screens/settings_changepass.dart';
import 'package:darson_stock_trainer/screens/home/settings_screens/settings_changepin.dart';
import 'package:darson_stock_trainer/screens/home/settings_screens/settings_createpin.dart';
import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Provider.of<Link>(context, listen: true);
    TextStyle text1 = const TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              back(const Home(), context),
              Text(
                'Settings',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              horizental(10),
            ],
          ),
          vertical(30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Security',
              style: text1,
            ),
          ),
          vertical(15),
          Button(
              width: 0.8,
              ontap: () {
                widget.changewidget(const Settingschnagepass());
              },
              text: 'Change Password'),
          vertical(15),
          Button(
              width: 0.8,
              ontap: () {
                widget.changewidget(const Settingschnagepin());
              },
              text: 'Change Pin'),
          vertical(15),
          Button(
              width: 0.8,
              ontap: () {
                widget.changewidget(const SettingCreatePin());
              },
              text: 'Create Pin'),
          vertical(15),
          Button(width: 0.8, ontap: () {}, text: 'Set Prefered Account'),
          vertical(30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'About',
              style: text1,
            ),
          ),
          vertical(15),
          Button(width: 0.8, ontap: () {}, text: 'About this app'),
        ],
      ),
    );
  }
}
