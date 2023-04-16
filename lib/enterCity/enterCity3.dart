import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health/pages/cardiac.dart';
import 'package:health/cardNag.dart';
import 'package:health/Curvebutton.dart';
import 'package:health/datePick.dart';
import 'package:health/cities/amravti/neurosurgean_amt.dart';
import 'package:health/cities/Nagpur/neurosurgean_nag.dart';
import 'package:health/cities/mumbai/neurosurgean_mum.dart';
import 'package:health/cities/pune/neurosurgean_pune.dart';

class dropdown3 extends StatefulWidget {
  const dropdown3({super.key});

  @override
  State<dropdown3> createState() => _dropdown3State();
}

class _dropdown3State extends State<dropdown3> {
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
                                        builder: (context) => neurosurgeonN()),
                                  );
                                } else if (selectedItem == 'Amrvati') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => neurosurgeonA()),
                                  );
                                } else if (selectedItem == 'Pune') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => neurosurgeonP()),
                                  );
                                } else if (selectedItem == 'mumbai') {}
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => neurosurgeonM()),
                                );
                              },
                            )
                          ]))))))
    ]));
  }
}
