// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_types_as_parameter_names

import 'package:darson_stock_trainer/widgets/button.dart';
import 'package:darson_stock_trainer/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'signin.dart';
import 'utils/ui_helpers.dart';
import 'utils/university_list.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _confirmemail = TextEditingController();
  final TextEditingController _cnic = TextEditingController();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _institute = TextEditingController();
  bool email = false;
  bool cnic = false;
  bool name = false;
  bool mobile = false;
  bool city = false;
  bool institute = false;
  bool readonly = true;
  bool first = false;
  bool second = false;
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 40, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'),
                fit: BoxFit.fill)),
        // color: cColor.darkback,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          vertical(35),
          Text("Please signup for your account",
              style: Theme.of(context).textTheme.bodyText1),
          vertical(45),
          textArea(
            context,
            Icon(
              Icons.person,
            ),
            _firstname,
            'Name',
            1,
          ),
          (name)
              ? Text(
                  'Please Enter Name',
                  style: TextStyle(),
                )
              : SizedBox(),
          vertical(15),
          textArea(
            context,
            Icon(
              Icons.email,
            ),
            _email,
            "Email",
            1,
          ),
          (email)
              ? Text(
                  'Please Enter Correct Email',
                  style: TextStyle(color: Colors.red),
                )
              : SizedBox(),
          vertical(15),
          textArea(
            context,
            Icon(
              Icons.email,
            ),
            _confirmemail,
            "Confirm Email",
            1,
          ),
          vertical(15),
          textArea(
            context,
            Icon(
              Icons.phone,
            ),
            _mobile,
            "Mobile number",
            1,
          ),
          (mobile)
              ? Text(
                  'Please Enter Mobile',
                  style: TextStyle(),
                )
              : SizedBox(),
          vertical(15),
          textArea(
            context,
            Icon(
              Icons.location_city,
            ),
            _city,
            "City Name",
            1,
          ),
          (city)
              ? Text(
                  'Please Enter City Name',
                  style: TextStyle(),
                )
              : SizedBox(),
          vertical(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(15),
                  ],
                  style: TextStyle(color: Colors.black),
                  controller: _cnic,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // print('lengthis ${value.length}');
                    if (value.length == 4) {
                      setState(() {
                        first = true;
                      });
                    }
                    if (value.length == 5 && first == true) {
                      _cnic.text = value + '-';
                      _cnic.selection =
                          TextSelection.collapsed(offset: _cnic.text.length);
                      setState(() {
                        first = false;
                      });
                    }
                    if (value.length == 12) {
                      setState(() {
                        second = true;
                      });
                    }
                    if (value.length == 13 && second == true) {
                      setState(() {
                        _cnic.text = value + '-';
                        _cnic.selection =
                            TextSelection.collapsed(offset: _cnic.text.length);
                        second = false;
                      });
                    }
                  },
                  //
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.contact_mail_outlined,
                    ),
                    hintText: "Enter Your Cnic",
                    hintStyle: TextStyle(color: Theme.of(context).hintColor),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          (cnic)
              ? Text(
                  'Please Enter Correct Cnic',
                  style: TextStyle(color: Colors.red),
                )
              : SizedBox(),
          vertical(15),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              readOnly: readonly,
              style: TextStyle(color: Theme.of(context).hintColor),
              controller: _institute,
              onTap: (() {
                // bottom();
                if (readonly) {
                  showEventModalSheet();
                }
              }),
              onFieldSubmitted: (value) {
                setState(() {
                  readonly = true;
                });
              },
              //
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.school_sharp,
                ),
                hintText: "Select Institute",
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                border: InputBorder.none,
              ),
            ),
          ),
          (institute)
              ? Text(
                  'Please Select Institute',
                  style: TextStyle(color: Colors.red),
                )
              : SizedBox(),
          vertical(45),
          Button(
            text: "Sign up",
            width: 1,
            ontap: () {
              checking();
            },
            // loader: loader.signup,
          ),
          vertical(25),
          dontacoount("have an account ? ", "Sign in", () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
          }, context),
        ]),
      ),
    ));
  }

  void showEventModalSheet() async {
    return showModalBottomSheet(
        useRootNavigator: true,
        enableDrag: true,
        barrierColor: Colors.black.withOpacity(0.2),
        backgroundColor: Colors.black.withOpacity(0.2),
        isScrollControlled: true,
        isDismissible: false,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.65,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),

                // decoration: BoxDecoration(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/main_bg.png'),
                      fit: BoxFit.fill),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            this.setState(() {
                              readonly = false;
                            });
                            Navigator.pop(context);
                          },
                          child: Container(
                            color: Theme.of(context).primaryColorDark,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 35),
                            child: Text(
                              "Cutom_Input",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      vertical(25),
                      SizedBox(
                        child: ListView.builder(
                            controller: ScrollController(),
                            shrinkWrap: true,
                            itemCount: univeristy.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        this.setState(() {
                                          _institute.text =
                                              univeristy[index].toString();
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Center(
                                        child: Text(
                                          univeristy[index].toString(),
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                      color: Theme.of(context).primaryColorDark,
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              );
            },
            // ),
          );
        });
  }

  Widget textArea(
    context,
    Icon icon,
    TextEditingController controller,
    String hintText,
    double width,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * width,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: (hintText.contains('Mobile'))
                ? TextInputType.number
                : TextInputType.text,
            style: TextStyle(color: Colors.black),
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: icon,
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
    // print(_firstname.text);
    if (_firstname.text.isEmpty) {
      setState(() {
        name = true;
      });
    } else if (_mobile.text.isEmpty) {
      setState(() {
        mobile = true;
      });
    } else if (_email.text.isEmpty ||
        !_email.text.contains('@') ||
        !_email.text.contains('.com')) {
      setState(() {
        email = true;
      });
    } else if (_cnic.text.length < 15) {
      setState(() {
        cnic = false;
      });
    } else if (_institute.text.isEmpty) {
      setState(() {
        institute = true;
      });
    } else {
      setState(() {
        name = false;
        mobile = false;
        email = false;
        cnic = false;
        institute = false;
      });
      // sendtoadmin(_firstname.text, _mobile.text, _email.text.trim(), _cnic.text,
      //     _institute.text, context);
    }
  }
}
