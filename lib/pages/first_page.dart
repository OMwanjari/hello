import 'dart:ui';

import 'package:flutter/material.dart';

import '../auth_controller.dart';
import '../navigatordrop/navigator_card.dart';
import '../navigatordrop/navigator_dentist.dart';
import '../navigatordrop/navigator_neu.dart';
import '../navigatordrop/navigator_physician.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'H E L L O',
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image(
                image: AssetImage("assets/image/png.png"),
              ),
            ),
          ),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    padding: EdgeInsets.fromLTRB(0, 0, 0.9, 0),
                    icon: Icon(
                      Icons.face,
                      color: Colors.green,
                      size: 40,
                    ));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ), // Add a SizedBox with a height of 20

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Column(children: [
                    Container(
                        height: 300,
                        width: 540,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image(
                            image: AssetImage("assets/image/H E L L O.jpg"),
                          ),
                        )),
                  ]))
                ],
              ),

              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 125,
                  width: 500,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => navd()),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                height: 70,
                                width: 70,
                                child: Image(
                                  image: AssetImage(
                                      "assets/image/clean-tooth.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Text("Dentist",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500))),
                          ],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => navP()),
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Image(
                                  image: AssetImage("assets/image/vaccine.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text("physician",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => navC()),
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Image(
                                  image:
                                      AssetImage("assets/image/cardiology.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Cardiac",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => navN()),
                                  );
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image(
                                    image: AssetImage("assets/image/brai.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Text(
                                  "Neuro",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 40),
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Rated Doctors',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 250,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/doc2.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.green),
                  ),
                  Container(
                    width: 250,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/doc1.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.green),
                  ),
                  Container(
                    width: 250,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/doc3.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.green),
                  )
                ]),
              )
            ],
          ),
        ),
        drawer: Drawer(
            child: Container(
          child: ListView(
            children: [
              Column(children: [
                Container(
                  color: Colors.green,
                  child: DrawerHeader(
                      child: Center(
                    child: Column(children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Icon(
                        Icons.face,
                        size: 60,
                      ),
                      Text("User"),
                    ]),
                  )),
                ),
              ]),
              Center(
                child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.black,
                    size: 30,
                  ),
                  title: const Text('Logout', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    // Handle logout logic here
                    AuthController.instance.logOut();
                  },
                ),
              )
            ],
          ),
        )));
  }
}
