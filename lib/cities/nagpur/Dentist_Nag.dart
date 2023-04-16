import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:health/pages/home_page.dart';

class DentistN extends StatelessWidget {
  const DentistN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          Container(
            height: 70,
            width: 600,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("assets/image/png.png"),
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            height: 200,
            width: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color.fromARGB(255, 205, 240, 234)),
            child: Center(
              child: Text(
                "Dentist",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 44),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Best Doctor in Nagpur",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 28,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
              height: 100,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/doc4.png"),
                    )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 30,
                      width: 200,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Dr. Ragini Sharma ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        height: 35,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            "Dentist at Shalinitai Meghe  ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                )),
                SizedBox(width: 15),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
              height: 100,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/doc1.png"),
                    )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 30,
                      width: 200,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Dr. Ramgopal Iyer ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        height: 35,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            "Dentist at Iyer dental clinic  ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                )),
                SizedBox(width: 15),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
              height: 100,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/doc5.png"),
                    )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 30,
                      width: 200,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Dr. Ashish Sharma ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        height: 35,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            "Dentist at Netra Kalyan  ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                )),
                SizedBox(width: 15),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
              height: 100,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/doc3.png"),
                    )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 30,
                      width: 200,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Dr. Shinchan Nohara ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        height: 35,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            "Dentist at AIMMS  ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                )),
                SizedBox(width: 15),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
              height: 100,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/doc2.png"),
                    )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 30,
                      width: 200,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Dr. Yamini Girepunje ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        height: 35,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            "Dentist at Girepunjes clinic  ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                )),
                SizedBox(width: 15),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ),
          ),
        ],
      )),
    ));
  }
}
