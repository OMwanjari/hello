import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Selected Date: ${_selectedDate.toLocal()}'.split(' ')[0],
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: Text('Select Date'),
        ),
      ],
    );
  }
}
