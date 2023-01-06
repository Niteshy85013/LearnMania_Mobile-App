import 'package:flutter/material.dart';

class helpscreen extends StatefulWidget {
  const helpscreen({super.key});

  @override
  State<helpscreen> createState() => _helpscreenState();
}

class _helpscreenState extends State<helpscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.10,
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        title: const Text("Help and Support",
            style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: size.height * .25,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/help.png",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 200, 154, 154)
                        .withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
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
                            Navigator.pushNamed(context, '/');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.mail,
                                size: 50,
                                color: Colors.amber,
                              ), // <-- Icon
                              Text("Write a Mail",
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
                                Icons.phone,
                                size: 50,
                                color: Colors.amber,
                              ), // <-- Icon
                              Text("Make a Call",
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
                            Navigator.pushNamed(context, '/');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.note,
                                size: 50,
                                color: Colors.amber,
                              ), // <-- Icon
                              Text("T & C",
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
                            Navigator.pushNamed(context, '/');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.message,
                                size: 50,
                                color: Colors.amber,
                              ), // <-- Icon
                              Text("Help Yourself",
                                  style: TextStyle(
                                      fontSize: 19,
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
          ],
        ),
      ),
    );
  }
}
