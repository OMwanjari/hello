import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../utilis/routes.dart';
import 'signin_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      //child: SingleChildScrollView(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 710,
              width: 500,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 205, 240, 234),
                color: Colors.white,
                //image: DecorationImage(
                //  image: AssetImage("img/bg.jpg"), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ), // BoxShadow
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Form(
                key: _formkey,
                child: Column(children: [
                  Lottie.asset("assets/animations/login.json",
                      width: 320, fit: BoxFit.cover),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    height: 390,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color.fromARGB(255, 205, 240, 234),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "H e l l o",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Health Education and Lifestyle Optimization",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                          child: Column(
                            children: [
                              Container(
                                child: SizedBox(
                                  width: 400,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Email",
                                          prefixIcon: const Icon(
                                            Icons.email,
                                            color: Colors.green,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          hoverColor: const Color.fromARGB(
                                              255, 215, 245, 255),
                                          labelText: "Email",
                                          labelStyle:
                                              const TextStyle(fontSize: 15),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email cannot be empty";
                                        }
                                        return null;
                                      }),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: SizedBox(
                                  width: 400,
                                  child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter Password",
                                          prefixIcon: const Icon(
                                            Icons.password,
                                            color: Colors.green,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          hoverColor: const Color.fromARGB(
                                              255, 215, 245, 255),
                                          labelText: "Password",
                                          labelStyle:
                                              const TextStyle(fontSize: 15),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "password cannot be empty";
                                        } else if (value.length < 6) {
                                          return "password must contain 6 letters";
                                        }
                                        return null;
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 60 : 180,
                            height: 60,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                            decoration: BoxDecoration(
                                color: changeButton
                                    ? Colors.lightBlue
                                    : Colors.green,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 30)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Don\'t have an account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[500],
                                ),
                                children: [
                              TextSpan(
                                  text: " Create",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const SigninPage()))
                            ])),
                        // SizedBox(
                        // height: 20,
                        //),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
