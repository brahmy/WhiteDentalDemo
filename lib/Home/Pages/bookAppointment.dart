import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key key}) : super(key: key);

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
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
            sliderimages(context),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Book An Appointment",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),

            /// Material Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black, width: 1.5),
                ),
                onPressed: () {},
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "For Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
              ),
            ),

            /// Material Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.black, width: 1.5)),
                onPressed: () {},
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "For Child",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget sliderimages(BuildContext context) {
  final List<String> imgList = [
    'https://picsum.photos/536/354',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://picsum.photos/536/354',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final List<Widget> imageSliders = imgList.map((item) => Container()).toList();
  return Container(
      child: Column(
    children: <Widget>[
      ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Carousel(
              dotSpacing: 20,
              dotSize: 5,
              indicatorBgPadding: 10,
              images: imageSliders,
            ),
          ),
        ],
      )
    ],
  ));
}
