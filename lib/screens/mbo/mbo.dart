import 'package:darson_stock_trainer/screens/mbo/classmodel_market/mboclassmodel.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'components/cards_helper.dart';
import 'components/mbocards.dart';

class MBO extends StatelessWidget {
  const MBO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? textwhite = const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'montserrat',
        color: Colors.white);
    TextStyle textyellow = const TextStyle(
        fontFamily: 'montserrat',
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Color(0xffFBCB2E));
    return Column(
      children: [
        Text(
          'MBO',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        vertical(30),
        searchcard(context),
        vertical(15),
        textcard('Pakistan State Oil Co Ltd.', '', textwhite, context),
        vertical(15),
        textcard('Last Update Time:', ' Sep 2, 2022 04:12:01 PM', textyellow,
            context),
        vertical(15),
        tablehead(mboheading, context),
        ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            controller: ScrollController(),
            itemCount: mboclasslist.length,
            itemBuilder: (context, index) {
              return tablebody(mboclasslist[index],
                  (index.remainder(2) == 0) ? dark : light, index, context);
            }),
      ],
    );
  }
}
