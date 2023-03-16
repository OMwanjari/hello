import 'package:flutter/material.dart';
import 'package:health/auth_controller.dart';

class HomePage extends StatelessWidget {
  String email;
  HomePage({Key? key, required this.email}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            const SizedBox(
              height: 300,
            ),
            const Text(
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
            const SizedBox(
              height: 100.0,
            ),
            RichText(
                text: TextSpan(
              text:
                  "welcome bro $email \n\nText nahi aara\nmujhe Call nahi aara",
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                AuthController.instance.logOut();
              },
              child: Container(
                height: 60,
                width: 180,
                alignment: Alignment.center,
                // ignore: sort_child_properties_last
                child: const Text(
                  "Sign out",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
