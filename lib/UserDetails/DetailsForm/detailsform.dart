import 'package:flutter/material.dart';
import 'package:untitled/Home/Pages/bookAppointment.dart';

import 'package:untitled/UserDetails/DetailsForm/Components/controller/%20userDertails_controller.dart';
import 'package:untitled/UserDetails/DetailsForm/Components/dateOf%20Birth.dart';
import 'package:untitled/UserDetails/DetailsForm/Components/userFields.dart';
import 'package:untitled/UserDetails/DetailsForm/Components/genderSelector.dart';
import 'package:get/get.dart';

class UserDetails extends GetView {
  final detailController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Logo",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: FirstName(),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: DateOfBirth(),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Gender(),
            ),
            Align(
              alignment: Alignment(0.0, -2.3),
              heightFactor: 0.6,
              child: FloatingActionButton(
                onPressed: () {
                  // submitValidate();
                  print(detailController.checkLogIn());
                  if (detailController.checkLogIn()) {
                    Get.to(BookAppointment());
                  }
                },
                child: Icon(Icons.arrow_forward_ios_rounded),
                backgroundColor: Colors.black,
                elevation: 0.0,
              ),
            ),
            SizedBox(
              height: 50,
            ),
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

  void submitValidate() {
    if (detailController.firstNAME != null) {
    } else if (detailController.lastNAME != null) {}
  }
}
