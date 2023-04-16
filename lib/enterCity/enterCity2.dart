import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:health/cities/amravti/Dentist_amt.dart';
import 'package:health/cities/Nagpur/Dentist_Nag.dart';
import 'package:health/cities/mumbai/Dentist_Mum.dart';
import 'package:health/cities/pune/Dentist_Pune.dart';
import 'package:health/cardNag.dart';
import 'package:health/Curvebutton.dart';
import 'package:health/datePick.dart';

class dropdown2 extends StatefulWidget {
  const dropdown2({super.key});

  @override
  State<dropdown2> createState() => _dropdown2State();
}

class _dropdown2State extends State<dropdown2> {
  List<String> items = ['Nagpur', 'Pune', 'Amrvati', 'mumbai', ''];
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          child: Center(
              child: Container(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                          height: 205,
                          width: 300,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 205, 240, 234),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(children: [
                            Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedItem,
                                  items: items.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedItem = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Curvedbutton(
                              text: "Search for doctor",
                              onPressed: () {
                                if (selectedItem == 'Nagpur') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DentistN()),
                                  );
                                } else if (selectedItem == 'Amrvati') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DentistA()),
                                  );
                                } else if (selectedItem == 'Pune') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DentistP()),
                                  );
                                } else if (selectedItem == 'mumbai') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DentistM()),
                                  );
                                }
                              },
                            )
                          ]))))))
    ]));
  }
}
