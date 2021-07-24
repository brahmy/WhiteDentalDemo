import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:untitled/Authentication/MobileNumberEntry/controller/mobilenocontroller.dart';
import 'package:untitled/Authentication/OTPEntry/view/otp.dart';

class MobileNumber extends GetView<MobilenoController> {
  final mobilenoController = MobilenoController();

  // void validate() {
  //   if (formkey.currentState.validate()) {
  //   } else {}
  // }

  // /// form field validation
  // String validateno(value) {
  //   if (value.isEmpty) {
  //     return "Required";
  //   } else if (value.length < 8) {
  //     return "Mobile number must be 8 numbers";
  //   } else {
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    /// Using getx validation
    final mobilenumberController = Get.put(MobilenoController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Logo width and height
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
              height: 20,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    /// Size between textfield and card on the upside
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Form(
                        key: mobilenumberController.loginFormKey,
                        child: new TextFormField(
                          keyboardType: TextInputType.number,

                          maxLength: 8,
                          controller: mobilenumberController.mobilenoController,
                          onSaved: (value) {
                            mobilenumberController.mobileno = value;
                          },
                          validator: (value) {
                            return mobilenumberController
                                .validatemobileno(value);
                          },

                          /// text field decoration
                          decoration: new InputDecoration(

                              /// normal border style
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.3),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.3),
                              ),
                              labelText: "Enter Your Phone No",
                              labelStyle: TextStyle(
                                color: Colors.grey[400],
                              ),
                              hintText: "Enter Your Phone No",
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                              ),
                              prefix: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "+61 |",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      /// padding to the text
                      child: Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Text(
                          "An OTP will be sent to this number",
                          style: TextStyle(
                            color: Colors.cyan[700],
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      /// padding to the text
                      child: Padding(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment(0.0, -2.3),
                      heightFactor: 0.6,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Get.to(OTP());
                          mobilenumberController.ckeckLogin();
                        },
                        child: Icon(Icons.arrow_forward_ios_rounded),
                        backgroundColor: Colors.black,
                        elevation: 0.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// height b/w card and Ads
            SizedBox(
              height: 50,
            ),

            /// Ads space
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
}
