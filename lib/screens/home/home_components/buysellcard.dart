import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

Widget busysellcard(context, dynamic data) {
  TextStyle textwhite = const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  TextStyle textgreen = const TextStyle(
      color: Color(0xff479E6C),
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  TextStyle textyellow = const TextStyle(
      color: Color(0xffFBCB2E),
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5),
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
              end: Alignment(0, -1),
              begin: Alignment(0, 0.3))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${data.title} (${data.type})',
                          style: textyellow,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-1, 0),
                        child: Text.rich(TextSpan(
                            text: 'Vol : ',
                            style: textgreen,
                            children: [
                              TextSpan(text: '${data.volume}', style: textwhite)
                            ])),
                      ),
                    ],
                  ),
                  Text(
                    '${data.subtitle}',
                    style: textwhite,
                  )
                ],
              ),
              const Spacer(),
              Container(
                width: 105,
                height: 50,
                decoration: BoxDecoration(
                    color: (data.changeinprice < 0)
                        ? Colors.red
                        : Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${data.lastprice}',
                      style: textwhite,
                    ),
                    Text(
                        '${data.changeinprice}(${(data.changeinprice / data.lastprice * 100).toStringAsFixed(2)}%)',
                        style: textwhite),
                  ],
                ),
              )
            ],
          ),
          closePricescard(context, data.closeprices),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BidVol',
                    style: textyellow,
                  ),
                  Text('Bid', style: textyellow),
                  Text('Offer', style: textyellow),
                  Text('OfferVol', style: textyellow),
                ],
              ),
              vertical(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${data.bidvol}',
                    style: textgreen,
                  ),
                  Text('${data.bid}', style: textgreen),
                  Text('${data.offer}', style: textgreen),
                  Text('${data.offervol}', style: textgreen),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget closePricescard(context, List data) {
  TextStyle textyellow = const TextStyle(
      color: Color(0xffFBCB2E),
      fontWeight: FontWeight.bold,
      fontFamily: 'montserrat');
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 20,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            colors: [Colors.green, Colors.white, Colors.red])),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${data[0]}',
          style: textyellow,
        ),
        Text(
          'close price',
          style: TextStyle(color: Theme.of(context).primaryColorDark),
        ),
        Text('${data[1]}', style: textyellow),
      ],
    ),
  );
}
