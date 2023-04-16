import 'package:flutter/material.dart';
import 'package:health/pages/last_page.dart';
import 'package:intl/intl.dart';

class Book extends StatefulWidget {
  String doc_name, city;

  Book({required this.doc_name, required this.city});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2024))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 240, 234),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 205, 240, 234),
        centerTitle: true,
        title: const Text(
          'Appointment',
          style: TextStyle(
              color: Colors.green, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: Image.asset("assets/images/logo.png")),
      ),
      body: Center(
        child: Container(
          width: w,
          height: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "${widget.doc_name}\n\n${widget.city}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 450,
                  height: 70,
                  child: TextFormField(
                      // controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Enter Paitient Name",
                          hintStyle: TextStyle(fontSize: 25),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.lightBlue,
                            size: 30,
                          ),
                          labelText: "Paitient Name",
                          labelStyle: const TextStyle(fontSize: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Paitient Name cannot be empty";
                        }
                        return null;
                      }),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.date_range),
                        label: Text(
                          "Date",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: _showTimePicker,
                          icon: Icon(Icons.timelapse),
                          label: Text(
                            "Time",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  DateFormat.yMMMMd().format(_dateTime),
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _timeOfDay.format(context).toString(),
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                SizedBox(
                  height: 80,
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
                          MaterialPageRoute(builder: (context) => LastPage()),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
