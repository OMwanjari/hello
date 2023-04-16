import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health/cities/nagpur/cardiac_Nag.dart';

import '../Curvebutton.dart';
import '../cities/amravti/cardiac_Amt.dart';
import '../cities/mumbai/cardiac_Mum.dart';
import '../cities/pune/cardiac_Pune.dart';

class dropdown1 extends StatefulWidget {
  const dropdown1({super.key});

  @override
  State<dropdown1> createState() => _dropdown1State();
}

class _dropdown1State extends State<dropdown1> {
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
                                        builder: (context) => cardiacN()),
                                  );
                                } else if (selectedItem == 'Amrvati') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => cardiacA()),
                                  );
                                } else if (selectedItem == 'Pune') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => cardiacP()),
                                  );
                                } else if (selectedItem == 'mumbai') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => cardiacM()),
                                  );
                                }
                              },
                            )
                          ]))))))
    ]));
  }
}
