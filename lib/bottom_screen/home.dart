import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/mainlog.png",
          width: 250,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 155.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 75, 201, 147),
        // actions: <Widget>[
        //   Image.asset(
        //     "assets/images/mainlog.png",
        //     height: 300,
        //     width: 350,
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  // color: Color.fromARGB(255, 121, 193, 156),
                  // borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(30),
                  //     topLeft: Radius.circular(30)),
                  ),
              //
              alignment: Alignment.centerLeft,

              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Welcome, Explore all programming\n ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: 'Courses ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  TextSpan(
                      text: 'and ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: 'Features',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red))
                ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  // color: Color.fromARGB(255, 121, 193, 156),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: const Color.fromARGB(255, 200, 154, 154)
                  //         .withOpacity(0.2),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset: const Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                  ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 25,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox.fromSize(
                      size: const Size(150, 150),
                      child: Material(
                        color: const Color.fromARGB(255, 222, 208, 160),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/schedulescreen');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.schedule,
                                size: 70,
                                color: Color.fromARGB(255, 206, 86, 228),
                              ), // <-- Icon
                              Center(
                                child: Text("Set Schedule ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(150, 150),
                      child: Material(
                        color: const Color.fromARGB(255, 222, 208, 160),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.assignment,
                                size: 70,
                                color: Color.fromARGB(255, 206, 86, 228),
                              ), // <-- Icon
                              Text("Work",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(150, 150),
                      child: Material(
                        color: const Color.fromARGB(255, 222, 208, 160),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.amber,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/helpscreen');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.help_center,
                                size: 70,
                                color: Color.fromARGB(255, 206, 86, 228),
                              ), // <-- Icon
                              Text("Help",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(150, 150),
                      child: Material(
                        // color: const Color.fromARGB(255, 240, 195, 49),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.amber,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.message,
                                size: 70,
                                color: Color.fromARGB(255, 206, 86, 228),
                              ), // <-- Icon
                              Text("Announcement",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: const BoxDecoration(
                  // color: Color.fromARGB(255, 121, 193, 156),
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(10),
                  //     topRight: Radius.circular(10),
                  //     bottomLeft: Radius.circular(10),
                  //     bottomRight: Radius.circular(10)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: const Color.fromARGB(255, 200, 154, 154)
                  //         .withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset: const Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                  ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/welcome.png',
                        height: 160,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          'Checkout Our Courses.',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
