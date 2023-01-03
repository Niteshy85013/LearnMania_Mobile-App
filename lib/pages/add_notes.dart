import 'package:flutter/material.dart';

class addnotescreen extends StatefulWidget {
  const addnotescreen({super.key});

  @override
  State<addnotescreen> createState() => _addnotescreenState();
}

class _addnotescreenState extends State<addnotescreen> {
  final _courseController = TextEditingController();
  final _titleController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();

  // Button modification
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.amber,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 244, 223),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/notpro.png',
                    height: 200,
                    width: 350,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const SizedBox(
                    child: Text(
                      'Create your Notes here.',
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        fontSize: 25,
                        color: Colors.red,
                        fontFamily: "OpenSans Bold",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _courseController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 2, 128, 231),
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
                    labelText: 'Course',
                  ),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter course name';
                    }
                    return null;
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _titleController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 2, 128, 231),
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
                    labelText: 'Title',
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
                        'Add Note',
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
