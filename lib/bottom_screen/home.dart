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
          children: [
            Container(
              height: size.height * .20,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: Color.fromARGB(255, 75, 201, 147),
                image: DecorationImage(
                  scale: 1.4,
                  image: AssetImage(
                    "assets/images/mainlog.png",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 200, 154, 154)
                        .withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 222, 208, 160),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/schedulescreen');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.schedule_outlined,
                                    size: 50), // <-- Icon
                                Text("Schedule",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 143, 192, 232),
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.question_mark, size: 50), // <-- Icon
                                Text("Questions",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 201, 155, 200),
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  size: 50,
                                  color: Colors.red,
                                ), // <-- Icon
                                Text("Calender",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 158, 210, 210),
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.help_center_outlined,
                                    size: 50), // <-- Icon
                                Text("Help",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 152, 152, 198),
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.menu_book_outlined,
                                    size: 50), // <-- Icon
                                Text("About",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(100, 100),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(255, 155, 192, 144),
                          child: InkWell(
                            splashColor: const Color.fromARGB(255, 93, 184, 97),
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.announcement, size: 50), // <-- Icon
                                Text("Notice",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 200, 154, 154)
                        .withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/welcome.png',
                        height: 145,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Checkout Our Courses.',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )
                    ],
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
