import 'package:darson_stock_trainer/screens/home/settings.dart';
import 'package:darson_stock_trainer/widgets/backicon.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class Settingschnagepass extends StatefulWidget {
  const Settingschnagepass({Key? key}) : super(key: key);

  @override
  State<Settingschnagepass> createState() => _SettingschnagepassState();
}

class _SettingschnagepassState extends State<Settingschnagepass> {
  TextStyle text1 = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);

  final TextEditingController _oldpass = TextEditingController();
  final TextEditingController _newpass = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();
  bool oldpass = true;
  bool newpass = true;
  bool confirmpass = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            back(const Settings(), context),
            Text(
              'Change Password',
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
            _oldpass,
            "Old Password",
            oldpass),
        vertical(15),
        textArea(
            context,
            const Icon(
              Icons.lock,
              // color: color,
            ),
            _newpass,
            "New Password",
            newpass),
        vertical(15),
        textArea(
            context,
            const Icon(
              Icons.lock,
              // color: color,
            ),
            _confirmpass,
            "Confirm Password",
            confirmpass),
        vertical(50),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'About',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        vertical(15),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'New password must contain eight to twelve small, CAPITAL and alpha numeric characters.',
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
                      newpass = !newpass;
                    });
                  } else if (hintText.contains('Old')) {
                    setState(() {
                      oldpass = !oldpass;
                    });
                  } else {
                    setState(() {
                      confirmpass = !confirmpass;
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
