import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Collateralscard extends StatelessWidget {
  String title;
  String titletype;
  Collateralscard({Key? key, required this.title, required this.titletype})
      : super(key: key);

  TextStyle textblack = const TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textblackreg = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );
  TextStyle blacklight = const TextStyle(
      color: Colors.black38, fontSize: 13, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: width,
      height: 260,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width,
          height: 45,
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black45),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                    text: '$title   ',
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [TextSpan(text: titletype, style: textblack)]),
              ),
              Text.rich(
                TextSpan(
                    text: 'Pending Sell:  ',
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [TextSpan(text: '0', style: textblack)]),
              ),
              const SizedBox()
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.44,
              child: Column(
                children: [
                  dataview('Quantity', '', textblack, context),
                  dataview('Total', 'Sold', blacklight, context),
                  dataview('2000', '90', textblackreg, context),
                  // dataview('Pending', '', blacklight, context),
                  // dataview('0', '', textblackreg, context),
                  dataview('Haircut', '', textblack, context),
                  dataview('Percent', 'Marg Val', blacklight, context),
                  dataview('100.00', '0.00', textblackreg, context),
                  dataview('P/L', '', textblack, context),
                  dataview('Settled', 'Unettled', blacklight, context),
                  dataview('0.00', '-3040.0', textblackreg, context),
                ],
              ),
            ),
            Container(
              width: 3,
              height: 215,
              color: Colors.black45,
            ),
            SizedBox(
              width: width * 0.44,
              child: Column(
                children: [
                  dataview('Average Rate', '', textblack, context),
                  dataview('Buy', 'Sell', blacklight, context),
                  dataview('0.00', '16.96', textblackreg, context),
                  // dataview('Pending', '', blacklight, context),
                  // dataview('0', '', textblackreg, context),
                  dataview('MTM', '', textblack, context),
                  dataview('Price', 'Amount', blacklight, context),
                  dataview('15.44', '30880.00', textblackreg, context),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}

Widget dataview(String title, String title2, TextStyle style, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.5),
    child: Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            title,
            style: style,
          ),
        ),
        Text(
          title2,
          style: style,
        )
      ],
    ),
  );
}

class CollateralsClassModel {
  String? title;
  String? titletype;
  CollateralsClassModel({this.title, this.titletype});
}

List<CollateralsClassModel> collateralslist = [
  CollateralsClassModel(title: 'FFl', titletype: ''),
  CollateralsClassModel(title: 'HUMNL', titletype: 'REG'),
];
