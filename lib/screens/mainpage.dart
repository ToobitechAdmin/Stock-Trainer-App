import 'package:darson_stock_trainer/provider/links_provider.dart';
import 'package:darson_stock_trainer/screens/exposure/exposure.dart';
import 'package:darson_stock_trainer/screens/home/home.dart';
import 'package:darson_stock_trainer/screens/indices.dart';
import 'package:darson_stock_trainer/screens/logout.dart';
import 'package:darson_stock_trainer/screens/logs/logs.dart';
import 'package:darson_stock_trainer/screens/mbo/mbo.dart';
import 'package:darson_stock_trainer/screens/mbo/mbp.dart';
import 'package:darson_stock_trainer/screens/messages.dart';
import 'package:darson_stock_trainer/screens/utils_screens/navbar_data.dart';
import 'package:darson_stock_trainer/screens/watches/watches.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List navpages = [
    const Home(),
    const Watches(),
    const Indices(),
    const Exposure(),
    const Logs(),
    const MBO(),
    const MBP(),
    const Messages(),
    const Logout()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final widget = Provider.of<Link>(context, listen: true);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: const BoxDecoration(color: Color(0xff3D3C3C)),
            child: ListView.builder(
                shrinkWrap: true,
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemCount: navbar.length,
                itemBuilder: (BuildContext context, count) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        index = count;
                      });
                      widget.changewidget(navpages[count]);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration: BoxDecoration(
                          color: (index == count)
                              ? const Color(0xff1E1E1E)
                              : Colors.transparent,
                          border: Border(
                              right: BorderSide(
                                  width: 1, color: Colors.grey.shade400),
                              bottom: BorderSide(
                                  width: 3,
                                  color: (index == count)
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).primaryColorDark))),
                      child: Center(
                          child: Text(
                        navbar[count],
                        style: const TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  );
                }),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'),
                fit: BoxFit.fill)),
        child: widget.link,
      ),
    );
  }
}
