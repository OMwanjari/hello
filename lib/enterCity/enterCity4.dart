import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health/pages/cardiac.dart';
import 'package:health/cardNag.dart';
import 'package:health/Curvebutton.dart';
import 'package:health/datePick.dart';
import 'package:health/cities/nagpur/physician_nag.dart';
import 'package:health/cities/mumbai/physician_Mum.dart';
import 'package:health/cities/pune/physician_pune.dart';
import 'package:health/cities/amravti/physician_amt.dart';

class dropdown4 extends StatefulWidget {
  const dropdown4({super.key});

  @override
  State<dropdown4> createState() => _dropdown4State();
}

class _dropdown4State extends State<dropdown4> {
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
                              color: Colors.green,
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
                                        builder: (context) => PhysicianN()),
                                  );
                                } else if (selectedItem == 'Amrvati') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PhysicianA()),
                                  );
                                } else if (selectedItem == 'Pune') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PhysicianP()),
                                  );
                                } else if (selectedItem == 'mumbai') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PhysicianM()),
                                  );
                                }
                              },
                            )
                          ]))))))
    ]));
  }
}
