import 'package:darson_stock_trainer/screens/home/settings.dart';
import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class Settingschnagepin extends StatefulWidget {
  const Settingschnagepin({Key? key}) : super(key: key);

  @override
  State<Settingschnagepin> createState() => _SettingschnagepinState();
}

class _SettingschnagepinState extends State<Settingschnagepin> {
  TextStyle text1 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _oldpin = TextEditingController();
  final TextEditingController _newpin = TextEditingController();
  final TextEditingController _confirmpin = TextEditingController();
  bool pass = true;
  bool oldpin = true;
  bool newpin = true;
  bool confirmpin = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            back(const Settings(), context),
            Text(
              'Change Pin',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            horizental(10),
          ],
        ),
        vertical(30),
        textArea(
            context,
            const Icon(
              Icons.lock,
            ),
            _pass,
            "Password",
            pass),
        vertical(15),
        textArea(
            context,
            const Icon(
              Icons.lock,
            ),
            _oldpin,
            "Old Pin",
            oldpin),
        vertical(15),
        textArea(
            context,
            const Icon(
              Icons.lock,
              // color: color,
            ),
            _newpin,
            "New Pin",
            newpin),
        vertical(15),
        textArea(
            context,
            const Icon(
              Icons.lock,
              // color: color,
            ),
            _confirmpin,
            "Confirm Pin",
            confirmpin),
        vertical(50),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Pin must be 4 digit long.',
            style: text1,
          ),
        ),
        vertical(30),
        Button(width: 0.8, ontap: () {}, text: 'OK')
      ],
    );
  }

  Widget textArea(context, Icon icon, TextEditingController controller,
      String hintText, bool show) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            controller: controller,
            obscureText: (show) ? true : false,
            //
            decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hintText,
              suffixIcon: InkWell(
                onTap: () {
                  if (hintText.contains('New')) {
                    setState(() {
                      newpin = !newpin;
                    });
                  } else if (hintText.contains('Old')) {
                    setState(() {
                      oldpin = !oldpin;
                    });
                  } else if (hintText.contains('Confirm')) {
                    setState(() {
                      confirmpin = !confirmpin;
                    });
                  } else {
                    setState(() {
                      pass = !pass;
                    });
                  }
                  // print(show);
                },
                child: Icon(
                  (show)
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              hintStyle: TextStyle(color: Theme.of(context).hintColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
