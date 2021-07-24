import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/get_utils.dart';

class UserController extends GetxController {
  final GlobalKey<FormState> userFormKey = GlobalKey<FormState>();

  TextEditingController firstNameController,
      lastNameController,
      dateOfBirthController,
      emailController;

  var firstNAME = "";
  var lastNAME = "";
  var dateOFBirth = "";
  var eMAIL = "";

  @override
  // creating instances
  void onInit() {
    super.onInit();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    emailController.dispose();
  }

  //validation for firstName
  String validateFirstName(String value) {
    if (!GetUtils.isUsername(value)) {
      return "Provide a valid Name";
    }
    return null;
  }

  //validation for firstName
  String validateLastName(String value) {
    if (!GetUtils.isUsername(value)) {
      return "Provide a valid Name";
    }
    return null;
  }

  //validation for firstName
  String validateDateOfBirth(String value) {
    if (!GetUtils.isNull(value)) {
      return "Provide a valid Name";
    }
    return null;
  }

  //validation for email
  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid email";
    }
    return null;
  }
  // validate for userKey

  bool checkLogIn() {
    final isValid = userFormKey.currentState.validate();
    print("heel0");
    if (isValid) {
      userFormKey.currentState.save();
      return true;
    } else {
      return false;
    }
  }
}
