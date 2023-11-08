// ignore_for_file: prefer_const_constructors

import 'package:darson_stock_trainer/screens/mainpage.dart';
import 'package:darson_stock_trainer/userAuthentication/forgotpass.dart';
import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'signup.dart';
import 'utils/ui_helpers.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isChecked = true;
  bool load = false;
  bool email = false;
  bool pass = false;
  bool showpass = true;
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
            Image.asset('assets/images/darson_logo.png'),
            vertical(45),
            Text("Please signin to your Account",
                style: Theme.of(context).textTheme.bodyText1),
            vertical(65),
            textArea(
              context,
              "Email",
              Icon(
                Icons.email,
              ),
              _email,
              "your_email@darson.com.pk",
            ),
            (email)
                ? Text(
                    'Invalid email',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox(),
            vertical(15),
            textArea(
              context,
              "Password",
              Icon(
                Icons.lock,
              ),
              _password,
              "Password",
            ),
            (pass)
                ? Text(
                    'Invalid Password',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox(),
            vertical(25),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Icon(
                      (_isChecked)
                          ? Icons.check_box_rounded
                          : Icons.check_box_outline_blank_sharp,
                      color: (_isChecked)
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColor,
                      size: 25),
                ),
                horizental(10),
                Text("Remember Me",
                    style: Theme.of(context).textTheme.bodyText1),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPass()));
                  },
                  child: Text('Forget Password?',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            ),
            vertical(50),
            Button(
              text: "Sign in",
              ontap: () {
                // checking();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainPage()));
              },
              // loader: load,
              width: 1,
            ),
            vertical(35),
            dontacoount("Don't have an account?", "Sign up", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Signup()));
            }, context),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        vertical(10),
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
            obscureText: (hintText.contains('Password')) ? showpass : false,
            decoration: InputDecoration(
              prefixIcon: icon,
              suffixIcon: (hintText.contains('Password'))
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          showpass = !showpass;
                        });
                        // print(showpass);
                      },
                      child: Icon(
                        (showpass)
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    )
                  : null,
              hintText: hintText,
              hintStyle: TextStyle(color: Theme.of(context).hintColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  checking() {
    if (_email.text.isEmpty ||
        !_email.text.contains('@') ||
        !_email.text.contains('.com')) {
      setState(() {
        email = true;
      });
    } else if (_password.text.isEmpty) {
      setState(() {
        pass = true;
      });
    } else {
      setState(() {
        email = false;
        pass = false;
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
