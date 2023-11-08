import 'package:flutter/material.dart';

Widget tablehead(List list, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 45,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        gradient: LinearGradient(
            colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
            end: Alignment(0, -1),
            begin: Alignment(0, -0.3))),
    child: Center(
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            tablecell(list[0], const Color(0xffFBCB2E)),
            tablecell(list[1], const Color(0xffFBCB2E)),
            tablecell(list[2], const Color(0xffFBCB2E)),
            tablecell(list[2], const Color(0xffFBCB2E)),
            tablecell(list[1], const Color(0xffFBCB2E)),
            tablecell(list[0], const Color(0xffFBCB2E), last: true),
          ]),
        ],
      ),
    ),
  );
}

Widget tablebody(dynamic list, List<Color> color, int index, context) {
  final Color first = color[0];
  final Color last = color[1];
  final List<Color> gradient = [
    last,
    last,
    first,
    first,
  ];
  return Padding(
    padding: EdgeInsets.only(top: (index == 8) ? 5 : 0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: gradient,
        stops: const [0.0, 0.5, 0.5, 1.0],
        end: Alignment.centerLeft,
        begin: Alignment.centerRight,
      )),
      child: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              tablecell(
                  list.flag1, (list.flag1 != 'dc') ? Colors.red : Colors.black),
              tablecell(list.volume1, Colors.black),
              tablecell(list.price1, Colors.black),
              tablecell(list.price2, Colors.black),
              tablecell(list.volume2, Colors.black),
              tablecell(list.flag2,
                  (list.flag1 != 'dc') ? Colors.green : Colors.black,
                  last: true),
            ]),
          ],
        ),
      ),
    ),
  );
}

Widget tablecell(String text, Color color, {bool? last}) {
  return Container(
      height: (color == const Color(0xffFBCB2E)) ? 45 : 30,
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                  color: Colors.white, width: (last == true) ? 0 : 1))),
      child: Center(
          child: Text(text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12.0, color: color))));
}
