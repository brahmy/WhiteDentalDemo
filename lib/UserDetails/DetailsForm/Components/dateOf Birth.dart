import 'package:flutter/material.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({Key key}) : super(key: key);

  @override
  _DateOfBirthState createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  /// Dob validation

  DateTime pickedDate;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  // TextEditingController intialdateval = TextEditingController();

  /*Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2030));
    if (picked != null)
      setState(
              () => { data.registrationdate = picked.toString(),
            intialdateval.text = picked.toString()
          }
      );
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: new TextFormField(
          readOnly: true,

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
              hintText:
                  "${pickedDate.year} / ${pickedDate.month} / ${pickedDate.day} ",
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {
                  _pickDate();
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
              )),

          /// Dob functions

          /*onTap: () async {
              await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2015),
                lastDate: DateTime(2025),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  intialdateval.text =
                      DateFormat('yyyy-MM-dd').format(selectedDate);
                }
              });
            },*/
          /* onTap:  () {
              _selectDate();
              FocusScope.of(context).requestFocus(new Focu  sNode());
            },
            onSaved: (value) {
              data.registrationdate = value;
            },*/
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
      initialDate: pickedDate,
    );
    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }
}
