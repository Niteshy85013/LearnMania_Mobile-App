import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class addschedulescreen extends StatefulWidget {
  const addschedulescreen({super.key});

  @override
  State<addschedulescreen> createState() => _addschedulescreenState();
}

class _addschedulescreenState extends State<addschedulescreen> {
  final _key = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final TextEditingController _date = TextEditingController();

  final _descriptionController = TextEditingController();

  // Date Picker Work
  final DateTime _dateTime = DateTime.now();
  void _setDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2024))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _date.text = DateFormat.yMd().format(pickedDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.00,
          title: const Text("Create your Schedule Here.",
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.white),
      // backgroundColor: const Color.fromARGB(255, 186, 240, 222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const SizedBox(
                    child: Text("Title",
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _titleController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    hintText: 'Enter your Title',
                  ),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter title';
                    }
                    return null;
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const SizedBox(
                    child: Text("Date",
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                    controller: _date,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_rounded),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      hintText: 'select Date',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter date';
                      }
                      return null;
                    }),
                    onTap: () {
                      _setDatePicker();
                    }),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const SizedBox(
                    child: Text("Description",
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    child: Container(
                  decoration: BoxDecoration(

                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: _descriptionController,
                    maxLines: 10,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      hintText: 'Description',
                    ),
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/dashboardscreen');
                      },
                      child: const Text(
                        'Add Schedule',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
