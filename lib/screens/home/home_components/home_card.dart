import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

Widget homecard(dynamic data, context) {
  TextStyle text1 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
              end: Alignment(0, -1),
              begin: Alignment(0, -0.3))),
      child: Row(
        children: [
          Text(
            data.type.toString(),
            style: text1,
          ),
          horizental(20),
          Text(
            data.title.toString(),
            style: text1,
          ),
          const Spacer(),
          (data.changeinprice < 0)
              ? Image.asset('assets/images/icons/arrow_down.png')
              : Image.asset('assets/images/icons/arrow_up.png'),
          SizedBox(
            width: 100,
            child: Center(
              child: Text(
                data.lastprice.toString(),
                style: text1,
              ),
            ),
          ),
          const Icon(
            Icons.close_sharp,
            color: Colors.red,
          )
        ],
      ),
    ),
  );
}
