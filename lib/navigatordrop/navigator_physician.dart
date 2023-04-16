import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:health/enterCity/enterCity4.dart';

class navP extends StatefulWidget {
  const navP({super.key});

  @override
  State<navP> createState() => _navPState();
}

class _navPState extends State<navP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                height: 600,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 4.0),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(children: [
                  Container(
                    height: 205,
                    width: 250,
                    margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: dropdown4(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 39),
                  Container(
                    height: 288,
                    width: 300,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                  ),
                ]))));
  }
}
