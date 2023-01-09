import 'package:flutter/material.dart';

class assignmentscreen extends StatefulWidget {
  const assignmentscreen({super.key});

  @override
  State<assignmentscreen> createState() => _assignmentscreenState();
}

class _assignmentscreenState extends State<assignmentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.black, size: 30),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        title: const Text(
          "Assignment Section",
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 100.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: SizedBox.fromSize(
              size: const Size(70, 70),
              child: ClipOval(
                child: Material(
                  color: const Color.fromARGB(255, 231, 111, 81),
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.assignment, size: 50), // <-- Icon
                        // <-- Text
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 122, 197, 212),
      ),
    );
  }
}
