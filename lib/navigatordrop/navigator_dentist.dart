import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:health/enterCity/enterCity2.dart';

class navd extends StatefulWidget {
  const navd({super.key});

  @override
  State<navd> createState() => _navdState();
}

class _navdState extends State<navd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 205, 240, 234),
          centerTitle: true,
          title: const Text(
            'Select Your City',
            style: TextStyle(
                color: Colors.green, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/logo.png")),
        ),
        body: Container(
            height: 600,
            width: 500,
            margin: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 4.0),
                borderRadius: BorderRadius.circular(25)),
            child: Column(children: [
              Container(
                height: 210,
                width: 430,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: dropdown2(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 205, 240, 234),
                ),
              ),
              SizedBox(height: 39),
              Container(
                height: 280,
                width: 430,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/city1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ])));
  }
}
