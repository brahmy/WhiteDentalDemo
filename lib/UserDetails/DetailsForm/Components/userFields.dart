import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:untitled/UserDetails/DetailsForm/Components/controller/%20userDertails_controller.dart';

class FirstName extends GetView {
  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: userController.userFormKey,
        child: Column(
          children: [
            new TextFormField(
              autovalidate: true,
              keyboardType: TextInputType.name,

              maxLength: 10,

              /// text field decoration
              decoration: new InputDecoration(
                /// normal border style
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                labelText: "Enter Your FirstName",
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                hintText: "Enter Your FirstName",
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              controller: userController.firstNameController,
              onSaved: (value) {
                userController.firstNAME = value;
              },
              validator: (value) {
                return userController.validateFirstName(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autovalidate: true,
              maxLength: 10,
              keyboardType: TextInputType.name,

              controller: userController.lastNameController,
              onSaved: (value) {
                userController.lastNAME = value;
              },
              validator: (value) {
                return userController.validateLastName(value);
              },

              /// text field decoration
              decoration: new InputDecoration(
                /// normal border style
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                labelText: "Enter Your LastName",
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                hintText: "Enter Your LastName",
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLength: 18,

              keyboardType: TextInputType.name,
              // function about showing errors in form field
              controller: userController.emailController,
              onSaved: (value) {
                userController.eMAIL = value;
              },
              validator: (value) {
                return userController.validateEmail(value);
              },

              /// text field decoration
              decoration: new InputDecoration(
                /// normal border style
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1.3),
                ),
                labelText: "Enter Your Email",
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                hintText: "Enter Your Email",
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
