import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/home/home.dart';
import 'package:darson_stock_trainer/screens/home/settings.dart';
import 'package:darson_stock_trainer/screens/searchscreen.dart';
import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

TextStyle whitetext = const TextStyle(
    fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600);

Widget homeappbar(context) {
  final widget = Provider.of<Link>(context, listen: true);
  String value = '-132.08';
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 80,
    child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: const Text(
                "KSE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            horizental(30),
            Text(
              '42,328.00',
              style: whitetext,
            ),
            const Spacer(),
            (value.contains('-'))
                ? Image.asset('assets/images/icons/arrow_down.png')
                : Image.asset('assets/images/icons/arrow_up.png'),
            horizental(10),
            Text(
              value,
              style: whitetext,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  widget.changewidget(const Settings());
                },
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor,
                ))
          ],
        ),
        Row(
          children: [
            Text.rich(TextSpan(
                text: 'Vol : ',
                style: Theme.of(context).textTheme.bodyText1,
                children: [TextSpan(text: ' 137.68m', style: whitetext)])),
            const Spacer(),
            Text.rich(TextSpan(
                text: 'STATUS : ',
                style: Theme.of(context).textTheme.bodyText2,
                children: [TextSpan(text: ' OPEN', style: whitetext)])),
            horizental(40)
          ],
        )
      ],
    ),
  );
}

Widget search(TextEditingController search, bool setting, context) {
  final link = Provider.of<Link>(context, listen: false);
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 50,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              onTap: () {
                if (setting) {
                } else {
                  link.changewidget(const SearchScreen());
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SearchScreen()));
                }
              },
              autofocus: setting,
              readOnly: (setting == false) ? true : false,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              controller: search,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  size: 35,
                  color: Theme.of(context).primaryColor,
                ),
                hintText: "SEARCH",
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        horizental(5),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text.rich(TextSpan(
                text: '+',
                style: Theme.of(context).textTheme.bodyText2,
                children: const [
                  TextSpan(
                      text: ' ADD',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ])),
          ),
        )
      ],
    ),
  );
}

Widget buysellappbar(context) {
  String value = '-132.08';
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    width: MediaQuery.of(context).size.width,
    height: 80,
    child: Row(
      children: [
        back(const Home(), context),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          "KSE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  horizental(30),
                  const Spacer(),
                  (value.contains('-'))
                      ? Image.asset('assets/images/icons/arrow_down.png')
                      : Image.asset('assets/images/icons/arrow_up.png'),
                  horizental(10),
                  Text(
                    value,
                    style: whitetext,
                  ),
                  horizental(30)
                ],
              ),
              Row(
                children: [
                  Text.rich(TextSpan(
                      text: 'Vol : ',
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                        TextSpan(text: ' 137.68m', style: whitetext)
                      ])),
                  const Spacer(),
                  Text.rich(TextSpan(
                      text: 'STATUS : ',
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [TextSpan(text: ' OPEN', style: whitetext)])),
                  horizental(40)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
