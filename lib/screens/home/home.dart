import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/home/buysell.dart';
import 'package:darson_stock_trainer/screens/home/home_classmodel/marketnames.dart';
import 'package:darson_stock_trainer/screens/home/home_components/home_appbar.dart';
import 'package:darson_stock_trainer/screens/home/home_components/home_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle text1 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final widget = Provider.of<Link>(context, listen: true);
    // print(_search.text);
    return Column(
      children: [
        homeappbar(context),
        search(_search, false, context),
        ListView.builder(
          itemCount: marketlist.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  widget.changewidget(BuySell(
                    data: marketlist[index],
                  ));
                },
                child: homecard(marketlist[index], context));
          },
        ),
      ],
    );
  }
}
