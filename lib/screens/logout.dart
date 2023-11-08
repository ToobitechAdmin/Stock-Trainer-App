import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/userAuthentication/signin.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final link = Provider.of<Link>(context, listen: false);
    return Column(
      children: [
        Text(
          'LOGOUT',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        vertical(150),
        Image.asset('assets/images/darson_logo.png'),
        vertical(100),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Text.rich(
            TextSpan(
                text: 'Do you want to close ',
                style: Theme.of(context).textTheme.headline1,
                children: [
                  TextSpan(
                      text: 'Stock Mobile App',
                      style: Theme.of(context).textTheme.bodyText1),
                  TextSpan(
                      text: '  v3.0?',
                      style: Theme.of(context).textTheme.headline1)
                ]),
            textAlign: TextAlign.center,
          ),
        ),
        vertical(50),
        Button(
            width: 0.8,
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Login()));
              link.changewidget(const Home());
            },
            text: 'LOGOUT')
      ],
    );
  }
}
