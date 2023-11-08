import 'package:flutter/material.dart';

class IndicesCard extends StatelessWidget {
  const IndicesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textyellow = TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 12,
        fontWeight: FontWeight.bold);
    TextStyle textwhite = const TextStyle(
        color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold);
    TextStyle textgreen = TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: 12,
        fontWeight: FontWeight.w600);
    TextStyle textred = const TextStyle(
        color: Colors.red, fontSize: 12, fontWeight: FontWeight.w600);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
              end: Alignment(0, -1),
              begin: Alignment(0, -0.3))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'KSE100',
                  style: textyellow,
                ),
                Text.rich(TextSpan(
                    text: 'Vol : ',
                    style: textyellow,
                    children: [TextSpan(text: ' 137.68m', style: textwhite)])),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'high:',
                    style: textgreen,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'low:',
                    style: textred,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '42332.07',
                      style: textwhite,
                    ),
                    Image.asset('assets/images/icons/arrow_down.png')
                  ],
                ),
                Text(
                  '71.69m',
                  style: textwhite,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '42568.66:',
                      style: textgreen,
                    ),
                    Image.asset('assets/images/icons/arrow_up.png')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '42239.98',
                      style: textred,
                    ),
                    Image.asset('assets/images/icons/arrow_down.png')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.28,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '-128.01  (-30%)',
                  overflow: TextOverflow.ellipsis,
                  style: textyellow,
                ),
                Text.rich(
                    TextSpan(text: 'Value: ', style: textyellow, children: [
                  TextSpan(
                    text: '3176.1m',
                    style: textwhite,
                  ),
                ])),
                Text(
                  '108.58 (0.29%)',
                  overflow: TextOverflow.ellipsis,
                  style: textgreen,
                ),
                Text(
                  '-221.96 (-0.53%)',
                  overflow: TextOverflow.ellipsis,
                  style: textred,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
