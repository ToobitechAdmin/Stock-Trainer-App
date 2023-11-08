import 'package:flutter/material.dart';

class ExposureCard extends StatelessWidget {
  const ExposureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [Color(0xff7C7C7C), Color(0xff3C3C3C)],
                end: Alignment(0, -1),
                begin: Alignment(0, -0.3))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(TextSpan(
                text: 'Account : ',
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: '0000',
                      style: Theme.of(context).textTheme.headline1)
                ])),
            const Icon(
              Icons.arrow_drop_down_rounded,
              size: 35,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
