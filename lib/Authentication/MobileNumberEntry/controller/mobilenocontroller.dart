import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MobilenoController extends GetxController {
  // String validateno(value) {
  //   if (value.isEmpty) {
  //     return "Required";
  //   } else if (value.length < 8) {
  //     return "Mobile number must be 8 numbers";
  //   } else {
  //     return null;
  //   }
  // }

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController mobilenoController;
  var mobileno = "";
  // Instances of controllers
  @override
  void onInit() {
    super.onInit();
    mobilenoController = TextEditingController();
  }

  // dispose the controllers
  void onClose() {
    super.onClose();
    mobilenoController.dispose();
  }

  // validation for mobile no
  String validatemobileno(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "Provide a valid Mobile no";
    }
    return null;
  }

  void ckeckLogin() {
    final isValid = loginFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState.save();
  }
}
