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
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: size.height * .10,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: Color.fromARGB(255, 149, 227, 193),
              ),
              child: const Center(
                  child: Text(
                'Our Courses',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 131, 193, 105),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/javalog.png",
                              width: 50.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 131, 193, 105),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/javalog.png",
                                width: 74.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Java Course",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 174, 151, 151),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/flutter.png",
                                width: 74.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Flutter Course",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 174, 151, 151),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/dart.png",
                                width: 74.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Dart Course",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 174, 151, 151),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/javalog.png",
                                width: 74.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Dart Course",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Card(
                        color: const Color.fromARGB(255, 174, 151, 151),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/javalog.png",
                                width: 74.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Dart Course",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
