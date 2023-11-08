import 'package:darson_stock_trainer/screens/mbo/classmodel_market/mbpclassmodel.dart';
import 'package:darson_stock_trainer/screens/mbo/components/mbp_cards.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'components/cards_helper.dart';
import 'components/mbocards.dart';

class MBP extends StatelessWidget {
  const MBP({Key? key}) : super(key: key);

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
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'MBP',
            style: textyellow,
          ),
          vertical(30),
          searchcard(context),
          vertical(15),
          textcard('Pakistan State Oil Co Ltd.', '', textwhite, context),
          vertical(15),
          textcard('Last Update Time:', ' Sep 2, 2022 04:12:01 PM', textyellow,
              context),
          vertical(15),
          tablehead(mbpheading, context),
          ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              controller: ScrollController(),
              itemCount: mbpclasslist.length,
              itemBuilder: (context, index) {
                return tablebodymbp(mbpclasslist[index],
                    (index.remainder(2) == 0) ? dark : light, index, context);
              }),
        ],
      ),
    );
  }
}

List<Color> dark = [const Color(0xff87C2E9), const Color(0xffEBD297)];
List<Color> light = [const Color(0xff9AC7E5), const Color(0xffEED9A9)];
