import 'package:flutter/material.dart';

class ExposureData extends StatelessWidget {
  const ExposureData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          rowviewdata('Ledger Balance', '918,776.00', context),
          rowviewdata('Sold Collaterals', '0.00', context),
          rowviewdata('Profit Loss', '0.00', context),
          rowviewdata('MTM P/L', '0.00', context),
          rowviewdata('Loan', '0.00', context),
          rowviewdata('Total', '918,776.00', context),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          rowviewdata('Collaterals', '88,020.00', context),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          rowviewdata('All values are in PKR.', '', context)
        ],
      ),
    );
  }
}

Widget rowviewdata(String title, String value, context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              value,
              style: Theme.of(context).textTheme.headline1,
            ))
      ],
    ),
  );
}
