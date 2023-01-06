import 'package:flutter/material.dart';

class schedulescreen extends StatefulWidget {
  const schedulescreen({super.key});

  @override
  State<schedulescreen> createState() => _schedulescreenState();
}

class _schedulescreenState extends State<schedulescreen> {
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Schedule\n     Section",
          style: TextStyle(fontSize: 35, color: Colors.black),
        ),
        toolbarHeight: 100.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 122, 197, 212),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/addnotescreen');
              },
              icon: const Icon(Icons.add), //icon data for elevated button
              label: const Text(
                "Add Schedule",
                style: TextStyle(fontSize: 16),
              ), //label text
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  backgroundColor: const Color.fromARGB(
                      255, 231, 92, 127) //elevated btton background color
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
