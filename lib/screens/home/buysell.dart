// ignore_for_file: must_be_immutable

import 'package:darson_stock_trainer/screens/home/home_components/buysellcard.dart';
import 'package:darson_stock_trainer/screens/home/home_components/home_appbar.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class BuySell extends StatefulWidget {
  dynamic data;
  BuySell({Key? key, required this.data}) : super(key: key);

  @override
  State<BuySell> createState() => _BuySellState();
}

class _BuySellState extends State<BuySell> {
  TextStyle textyellow = const TextStyle(
      color: Color(0xffFBCB2E),
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  PageController trade = PageController();
  int currenttrade = 0;
  PageController opentype = PageController();
  int currentopentype = 0;
  TextEditingController volume = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController limitprice = TextEditingController();
  TextEditingController account = TextEditingController();
  TextEditingController pin1 = TextEditingController();
  bool keyboard = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    volume.text = '100';
    price.text = '1.00';
    limitprice.text = '1.00';
    account.text = '0000';
  }

  @override
  Widget build(BuildContext context) {
    if (WidgetsBinding.instance.window.viewInsets.bottom > 0.0) {
      setState(() {
        keyboard = true;
      });
    } else {
      setState(() {
        keyboard = false;
      });
    }
    return Column(
      children: [
        buysellappbar(context),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                busysellcard(context, widget.data),
                card1('Trade', tradelist, trade, currenttrade),
                card1('Order Type', opentypelist, opentype, currentopentype),
                card2('Volume', volume),
                (currentopentype == 0)
                    ? vertical(0)
                    : card2('Price', price, pricefield: true),
                (currentopentype == 0) ||
                        (currentopentype == 1) ||
                        (currentopentype == 4)
                    ? horizental(0)
                    : card2('Limit Price', limitprice, settingbtn: false),
                card2('Account', account, settingbtn: false, readonly: true),
                card3(),
                (keyboard) ? vertical(180) : vertical(0),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Button(width: 1, ontap: () {}, text: tradelist[currenttrade]),
        )
      ],
    );
  }

  Widget card3() {
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            child: Text(
              'PIN',
              overflow: TextOverflow.ellipsis,
              style: textyellow,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1, color: Theme.of(context).primaryColor)),
            child: TextFormField(
              controller: pin1,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  hintText: 'PIN',
                  hintStyle: TextStyle(color: Colors.black54)),
            ),
          ),
          horizental(5),
          Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                  child: Text(
                'Forgot PIN',
                style: TextStyle(color: Colors.black),
              )))
        ],
      ),
    );
  }

  Widget card1(String title, List data, PageController page, int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
                end: Alignment(0, -1),
                begin: Alignment(0, 0.3))),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Spacer(),
            Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xffFBCB2E).withOpacity(0.6),
                        const Color.fromARGB(255, 255, 253, 253),
                        const Color(0xffFBCB2E).withOpacity(0.6)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: PageView.builder(
                    onPageChanged: (value1) => setState(() {
                          if (title == 'Trade') {
                            currenttrade = value1;
                          } else {
                            currentopentype = value1;
                          }
                        }),
                    controller: trade,
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, index) {
                      return SizedBox(
                        width: 200,
                        height: 40,
                        child: Center(
                          child: Text(
                            data[index],
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }

  Widget card2(String title, TextEditingController controller,
      {bool? pricefield, bool? settingbtn, List? prices, bool? readonly}) {
    TextStyle textyellow = const TextStyle(
        color: Color(0xffFBCB2E),
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'montserrat');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width,
        height: (pricefield == true) ? 70 : 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
                end: Alignment(0, -1),
                begin: Alignment(0, 0.3))),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: (settingbtn == false) ? 5 : 0),
              child: Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: textyellow,
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffFBCB2E).withOpacity(0.6),
                            const Color.fromARGB(255, 255, 253, 253),
                            const Color(0xffFBCB2E).withOpacity(0.6)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (readonly == true)
                            ? vertical(0)
                            : InkWell(
                                onTap: () {
                                  if (double.parse(controller.text) > 10) {
                                    setState(() {
                                      controller.text =
                                          (double.parse(controller.text) - 10)
                                              .toString();
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset(
                                      'assets/images/icons/remove_icon.png'),
                                ),
                              ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            readOnly: (readonly == true) ? true : false,
                            controller: controller,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 5, bottom: 0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                        )),
                        (readonly == true)
                            ? vertical(0)
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    controller.text =
                                        (double.parse(controller.text) + 10)
                                            .toString();
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset(
                                      'assets/images/icons/add_icon.png'),
                                ),
                              ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  (settingbtn == false)
                      ? horizental(0)
                      : IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            color: Theme.of(context).primaryColor,
                          ))
                ],
              ),
            ),
            (pricefield == true)
                ? SizedBox(
                    child: Row(
                      children: [
                        horizental(115),
                        const Text(
                          '5.46',
                          style: TextStyle(color: Colors.red),
                        ),
                        horizental(110),
                        const Text('6.47'),
                      ],
                    ),
                  )
                : horizental(0),
          ],
        ),
      ),
    );
  }
}

List tradelist = [
  'BUY',
  'SELL',
  'SHORT SELL',
];
List opentypelist = [
  'MARKET',
  'LIMIT',
  'STOP LOSS',
  'MIT',
  'FOK',
];
