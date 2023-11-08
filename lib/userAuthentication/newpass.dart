// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:darson_stock_trainer/userAuthentication/signin.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  final TextEditingController _newpass = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();
  bool newpass = true;
  bool confirmpass = true;
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New Password.", style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 64),
            textArea(
                context,
                Icon(
                  Icons.lock,
                  // color: color,
                ),
                _newpass,
                "New Password",
                newpass),
            vertical(20),
            textArea(
                context,
                Icon(
                  Icons.lock,
                  // color: color,
                ),
                _confirmpass,
                "Confirm Password",
                confirmpass),
            SizedBox(
              height: 150,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Set your new password",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            SizedBox(height: 20),
            Button(
              text: "Send",
              ontap: () {
                // checking();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Login(),
                ));
              },
              // loader: load,
              width: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget textArea(context, Icon icon, TextEditingController controller,
      String hintText, bool show) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
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
