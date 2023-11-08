// ignore_for_file: prefer_const_constructors

import 'package:darson_stock_trainer/userAuthentication/forgotpass_pin.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController _email = TextEditingController();
  bool load = false;
  bool email = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'),
                fit: BoxFit.fill)),
        // color: cColor.darkback,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                )),
            vertical(30),
            Center(
              child: Text("Forgot Password",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            vertical(20),
            Image.asset('assets/images/darson_logo.png'),
            vertical(65),
            textArea(
              context,
              "Email",
              Icon(
                Icons.email,
              ),
              _email,
              "Email",
            ),
            (email)
                ? Text(
                    'Invalid email',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox(),
            vertical(35),
            Button(
              text: "Send",
              ontap: () {
                // checking();
                // print('taped');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ForgotPassPin(),
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

  Widget textArea(
    context,
    String title,
    Icon icon,
    TextEditingController controller,
    String hintText,
  ) {
    return Container(
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
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).hintColor),
          border: InputBorder.none,
        ),
      ),
    );
  }

  checking() {
    if (_email.text.isEmpty ||
        !_email.text.contains('@') ||
        !_email.text.contains('.com')) {
      setState(() {
        email = true;
      });
    } else {
      setState(() {
        email = false;
        load = true;
      });
      // going();
    }
  }

  // going() async {
  //   print('inside');
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('users')
  //         .where('email', isEqualTo: _email.text.trim().toLowerCase())
  //         .get()
  //         .then((value) {
  //       value.docs.forEach((element) {
  //         print(element.id);
  //         if (element.data()['auth'] == _password.text) {
  //           // Navigator.of(context)
  //           //     .push(MaterialPageRoute(builder: (context) => NewsMain()));
  //         } else {
  //           // showMyDialog("Incorrect Credentials", context);
  //         }
  //       });
  //     });
  //   } catch (e) {
  //     print('inside error');
  //     print(e.toString());
  //     String msg = e.toString();
  //     msg = e.toString();
  //     msg = msg.split(']').last;
  //     // showMyDialog(msg, context);
  //   }
  //   setState(() {
  //     load = false;
  //   });
  // }
}
