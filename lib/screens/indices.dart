import 'package:darson_stock_trainer/screens/watches/watches_utils/watchesappbar.dart';
import 'package:darson_stock_trainer/widgets/indicescard.dart';
import 'package:flutter/material.dart';

class Indices extends StatefulWidget {
  const Indices({Key? key}) : super(key: key);

  @override
  State<Indices> createState() => _IndicesState();
}

class _IndicesState extends State<Indices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Refreshappbar(
          backpage: const Indices(),
          title: 'Indices',
          ontap: () {},
          isback: false,
        ),
        const IndicesCard()
      ],
    );
  }
}
