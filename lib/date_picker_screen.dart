import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({Key? key}) : super(key: key);

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(spreadRadius: 10, blurRadius: 10, color: Colors.white),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  _showTimePicker();
                },
                child: Center(
                  child: const Text(
                    "Time",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: "Open Sans",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 50,
              width: 150,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(spreadRadius: 10, blurRadius: 10, color: Colors.white),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  _showDatePicker();
                },
                child: Center(
                  child: const Text(
                    "Date",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: "Open Sans",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
