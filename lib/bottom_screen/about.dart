import 'package:flutter/material.dart';
import 'package:learnprac/pages/add_notes.dart';
import 'package:readmore/readmore.dart';

class aboutscreen extends StatefulWidget {
  const aboutscreen({super.key});

  @override
  State<aboutscreen> createState() => _aboutscreenState();
}

class _aboutscreenState extends State<aboutscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: size.height * .13,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  color: Color.fromARGB(255, 123, 162, 206),
                ),
                child: Center(
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: '             Note Section\n ',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: 'Create notes and make learning easier. ',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: const Color.fromARGB(255, 158, 220, 201),
                  // clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Notes on java ',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                          style: TextStyle(fontSize: 23, color: Colors.black),
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                          lessStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20.0,
                          children: <Widget>[
                            SizedBox.fromSize(
                              size: const Size(55, 55),
                              child: ClipOval(
                                child: Material(
                                  color:
                                      const Color.fromARGB(255, 231, 111, 81),
                                  child: InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Icon(Icons.delete,
                                            size: 45), // <-- Icon
                                        // <-- Text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox.fromSize(
                              size: const Size(55, 55),
                              child: ClipOval(
                                child: Material(
                                  color:
                                      const Color.fromARGB(255, 108, 194, 213),
                                  child: InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const addnotescreen()));
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Icon(Icons.edit, size: 45), // <-- Icon
                                        // <-- Text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
