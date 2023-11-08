import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OpenPositioncard extends StatelessWidget {
  OpenPositioncard({Key? key}) : super(key: key);

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
      width: width,
      height: 340,
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
                    text: 'BOP   ',
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [TextSpan(text: 'REG', style: textblack)]),
              ),
              Text.rich(
                TextSpan(
                    text: 'Net Qty:  ',
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [TextSpan(text: '1000', style: textblack)]),
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
                  dataview('BUY', '', textblack, context),
                  dataview('Total', 'Average', blacklight, context),
                  dataview('1000', '9.6', textblackreg, context),
                  dataview('Pending', '', blacklight, context),
                  dataview('0', '', textblackreg, context),
                  dataview('MTM', '', textblack, context),
                  dataview('Price', 'Amount', blacklight, context),
                  dataview('9.23', '9,230.00', textblackreg, context),
                  dataview('P/L', '', textblack, context),
                  dataview('Settled', 'Unettled', blacklight, context),
                  dataview('0.00', '-30.0', textblackreg, context),
                ],
              ),
            ),
            Container(
              width: 3,
              height: 295,
              color: Colors.black45,
            ),
            SizedBox(
              width: width * 0.44,
              child: Column(
                children: [
                  dataview('Sell', '', textblack, context),
                  dataview('Total', 'Average', blacklight, context),
                  dataview('0', '0.00', textblackreg, context),
                  dataview('Pending', '', blacklight, context),
                  dataview('0', '', textblackreg, context),
                  dataview('MTM', '', textblack, context),
                  dataview('Amount', '', blacklight, context),
                  dataview('92260.00', '', textblackreg, context),
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
