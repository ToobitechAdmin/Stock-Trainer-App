import 'package:darson_stock_trainer/screens/exposure/collaterals.dart';
import 'package:darson_stock_trainer/screens/exposure/components_ex/ex_data.dart';
import 'package:darson_stock_trainer/screens/exposure/ex_utils/exposurebtn.dart';
import 'package:darson_stock_trainer/screens/exposure/ex_utils/exposurecard.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'openposition.dart';

class Exposure extends StatefulWidget {
  const Exposure({Key? key}) : super(key: key);

  @override
  State<Exposure> createState() => _ExposureState();
}

class _ExposureState extends State<Exposure> {
  List links = [const ExposureData(), const OpenPosition(), Colleterals()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          vertical(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExposureBtn(
                  text: 'Exposure',
                  width: 0.3,
                  ontap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  bgcolor: (index == 0)
                      ? Theme.of(context).primaryColor
                      : Colors.yellow.shade200),
              ExposureBtn(
                  text: 'Open Position',
                  width: 0.3,
                  ontap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  bgcolor: (index == 1)
                      ? Theme.of(context).primaryColor
                      : Colors.yellow.shade200),
              ExposureBtn(
                  text: 'Colletrals',
                  width: 0.3,
                  ontap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  bgcolor: (index == 2)
                      ? Theme.of(context).primaryColor
                      : Colors.yellow.shade200),
            ],
          ),
          const ExposureCard(),
          links[index],
        ],
      ),
    );
  }
}
