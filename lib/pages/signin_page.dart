import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/auth_controller.dart';
import 'package:lottie/lottie.dart';
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
              height: 800,
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
                    height: 537,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color.fromARGB(255, 205, 240, 234),
                    ),
                    alignment: Alignment.center,
                    child: Column(children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "H e l l o   $name",
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
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
                                      hintStyle: TextStyle(fontSize: 20),
                                      prefixIcon: const Icon(
                                        Icons.account_circle,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hoverColor: const Color.fromARGB(
                                          255, 215, 245, 255),
                                      labelText: "Username",
                                      labelStyle: const TextStyle(fontSize: 20),
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
                              height: 25,
                            ),
                            Container(
                              child: SizedBox(
                                width: 400,
                                child: TextFormField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Enter Password",
                                        hintStyle: TextStyle(fontSize: 20),
                                        prefixIcon: const Icon(
                                          Icons.password,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hoverColor: const Color.fromARGB(
                                            255, 215, 245, 255),
                                        labelText: "Password",
                                        labelStyle:
                                            const TextStyle(fontSize: 20),
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
                              height: 25,
                            ),
                            Container(
                              child: SizedBox(
                                width: 400,
                                child: TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        hintText: "Enter Email",
                                        hintStyle: TextStyle(fontSize: 20),
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hoverColor: const Color.fromARGB(
                                            255, 215, 245, 255),
                                        labelText: "Email",
                                        labelStyle: const TextStyle(
                                          fontSize: 20,
                                        ),
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
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () async {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              changeButton = true;
                            });
                            // await Future.delayed(const Duration(seconds: 1));
                            AuthController.instance.register(
                                emailController.text.trim(),
                                passwordController.text.trim());
                            /* setState(() {
                              changeButton = false;
                            });*/
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 60 : 180,
                          height: 60,
                          alignment: Alignment.center,
                          // ignore: sort_child_properties_last
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
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
                            text: "Have an account ?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 113, 113, 113),
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
