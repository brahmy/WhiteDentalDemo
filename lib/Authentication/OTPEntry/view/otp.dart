import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled/UserDetails/DetailsForm/detailsform.dart';

class OTP extends StatefulWidget {
  const OTP({Key key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Container(
                /// Logo background color
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              /// card elevation
              elevation: 2.0,
              shadowColor: Colors.black54,

              /// border style
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black, width: 1)),

              /// Padding to the inside card elements
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Enter Your Six Digit OTP",
                      style: TextStyle(color: Colors.grey[700], fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(true, false),
                        _textFieldOTP(false, false),
                        _textFieldOTP(false, false),
                        _textFieldOTP(false, false),
                        _textFieldOTP(false, false),
                        _textFieldOTP(false, true),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        "RESEND OTP",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.cyan[700],
                            fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),

                    /// this is belongs to Text as a clickable
                    child: RichText(
                      text: TextSpan(
                          text: "By signing up, I agree to the ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(text: " of Dental white"),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment(0.0, -2.3),
                    heightFactor: 0.7,
                    child: FloatingActionButton(
                      onPressed: () {
                        Get.to(UserDetails());
                      },
                      child: Icon(Icons.arrow_forward_ios_rounded),
                      backgroundColor: Colors.black,
                      elevation: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            /// Sized Box about banner ads
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Container(
                /// Logo background color
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    "Banner Ads",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Functionality About OTP
  _textFieldOTP(bool first, last) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.55,
        child: Center(
          child: TextFormField(
            validator: null,
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(10),
              counter: Offstage(),
              border: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black, width: 1.6),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black, width: 1.6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
