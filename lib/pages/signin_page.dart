import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../utilis/routes.dart';
import 'login_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  String name = "";
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

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 710,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
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
                  Lottie.asset(
                    "assets/animations/signin.json",
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    height: 447,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color.fromARGB(255, 205, 240, 234),
                    ),
                    alignment: Alignment.center,
                    child: Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "H e l l o   $name",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
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
                                      hintText: "Enter Username",
                                      prefixIcon: const Icon(
                                        Icons.account_circle,
                                        color: Colors.green,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hoverColor: const Color.fromARGB(
                                          255, 215, 245, 255),
                                      labelText: "Username",
                                      labelStyle: const TextStyle(fontSize: 15),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Username cannot be empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
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
                            const SizedBox(
                              height: 15,
                            ),
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
                                        labelStyle: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Phone no. cannot be empty";
                                      } else if (value.length < 10) {
                                        return "Phone no. must contain 10 numbers";
                                      } else if (value.length > 10) {
                                        return "Phone no. should not greater than 10 numbers";
                                      }
                                      return null;
                                    }),
                              ),
                            )
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
                                  "Sign in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          decoration: BoxDecoration(
                              color: changeButton ? Colors.blue : Colors.green,
                              borderRadius: BorderRadius.circular(
                                  changeButton ? 50 : 30)),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Have an account",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(
                                  text: " Login",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const LoginPage()))
                            ]),
                      )
                    ]),
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
