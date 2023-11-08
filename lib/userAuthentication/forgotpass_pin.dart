// ignore_for_file: prefer_const_constructors

import 'package:darson_stock_trainer/userAuthentication/signin.dart';
import 'package:darson_stock_trainer/userAuthentication/utils/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'newpass.dart';

class ForgotPassPin extends StatefulWidget {
  const ForgotPassPin({Key? key}) : super(key: key);

  @override
  State<ForgotPassPin> createState() => _ForgotPassPinState();
}

class _ForgotPassPinState extends State<ForgotPassPin> {
  final TextEditingController _pin = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  int id = 1;
  @override
  Widget build(BuildContext context) {
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
        // color: cColor.darkback,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Recover Password.",
                style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 64),
            Form(
              key: formKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    textStyle: TextStyle(
                        // color: cColor.textwhitecolor
                        ),
                    // backgroundColor: cColor.darkback,
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: false,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      inactiveFillColor: Colors.transparent,
                      inactiveColor: Theme.of(context).primaryColor,
                      selectedColor: Theme.of(context).primaryColorDark,
                      selectedFillColor: Colors.transparent,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 45,
                      fieldWidth: 45,
                      // activeColor: cColor.lightback,
                      activeFillColor: Colors.transparent,
                    ),
                    // cursorColor: cColor.textwhitecolor,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    controller: _pin,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                      // print(_pin.text);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NewPass()));
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                      // print(currentText);
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text("Enter recovery code we’ve sent you",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            SizedBox(height: 40),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Resend Code",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Spacer(),
            dontacoount("Remembered?", "Back to sign in", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            }, context),
          ],
        ),
      ),
    );
  }
}
