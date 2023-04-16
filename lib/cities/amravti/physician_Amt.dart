import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PhysicianA extends StatelessWidget {
  const PhysicianA({super.key});

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
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.lightGreenAccent),
            child: Center(
              child: Text(
                "Physician",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 34),
              ),
            ),
          ),
          Text(
            "Best Doctor in Nagpur",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 17,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 187, 209, 220),
            ),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/image/kab.jpg"),
                  )),
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Kabir Singh ",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ),
                  Container(
                      height: 35,
                      width: 150,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text("Surgeon at Abc hospital "),
                      ))
                ],
              )),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                )
              ]),
            ]),
          ),
        ],
      )),
    ));
  }
}
