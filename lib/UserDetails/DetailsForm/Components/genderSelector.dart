import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({Key key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: customRadio("MALE", 1),
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: customRadio("FEMALE", 2),
                ),
              ],
            )
        ],
      ),
    );
  }

  /// radio buttons
  int selected = 0;

  String validatebutton(value){
    if(selected = null){
      return "Please Select Gender";
    }
}
  Widget customRadio(String text,int index){
    return Form(
      child: OutlineButton(

        onPressed: () {
          validatebutton;
          setState(() {
            selected = index;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: (selected == index) ? Colors.blue[900] : Colors.black,width: 5),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: (selected == index) ? Colors.blue[900] : Colors.black12,
          ),
        ),
      ),
    );
  }
}
