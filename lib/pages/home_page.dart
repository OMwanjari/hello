import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:health/auth_controller.dart';
import 'package:health/pages/Book_page.dart';

class HomePage extends StatelessWidget {
  String name = "Dr. Ragini sharma", city = "Nagpur";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Doctor Details',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: Image.asset("assets/images/logo.png")),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.deepPurple[100],
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/doc4.png"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "$name",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "MBBS( Medical College,Nagpur)\nDentist \nlocation - Near YCCE Collage Nagpur",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 101, 101, 101),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Shalinitai Meghe Hospital",
            style: TextStyle(
              fontSize: 25,
              //fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Paitients",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const Text(
                        "369",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const Text(
                        "7 Years",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const Text(
                        "4.9",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 450,
            height: 70,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Book(
                              doc_name: name,
                              city: city,
                            )),
                  );
                },
                child: const Text(
                  "Book Appointment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                )),
          ),
        ]),
      ),
    );
  }
}
