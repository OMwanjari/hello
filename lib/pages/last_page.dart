import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Lottie.asset("assets/animations/fire.json",
              width: 320, fit: BoxFit.cover),
          Lottie.asset("assets/animations/done.json",
              width: 320, fit: BoxFit.cover),
          Text(
            "Booking Confirmed",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 40),
          )
        ],
      )),
    );
  }
}
