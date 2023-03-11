import 'package:flutter/material.dart';
import 'package:health/pages/home_page.dart';
import 'package:health/utilis/routes.dart';

import 'pages/signin_page.dart';
import 'pages/login_page.dart';
import 'package:get/get.dart ';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.light()),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.signinRoute: (context) => SigninPage(),
      },
    );
  }
}
