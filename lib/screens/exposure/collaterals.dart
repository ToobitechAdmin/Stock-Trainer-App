import 'package:darson_stock_trainer/screens/exposure/components_ex/collateralscard.dart';
import 'package:flutter/material.dart';

class Colleterals extends StatelessWidget {
  Colleterals({Key? key}) : super(key: key);
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              controller: controller,
              itemCount: collateralslist.length,
              itemBuilder: (context, index) {
                return Collateralscard(
                    title: collateralslist[index].title.toString(),
                    titletype: collateralslist[index].titletype.toString());
              }),
          Text(
            '${collateralslist.length} of ${collateralslist.length} Collaterals',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
