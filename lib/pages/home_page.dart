import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Image.asset(
                "img/home_image.png",
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "H e l l o",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            Text(
              "Health Education and Lifestyle Optimization",
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
                text: TextSpan(
              text: "welcome bro",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
