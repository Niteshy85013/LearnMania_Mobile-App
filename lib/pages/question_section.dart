import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class questionsection extends StatefulWidget {
  const questionsection({super.key});

  @override
  State<questionsection> createState() => _questionsectionState();
}

class _questionsectionState extends State<questionsection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Question Section",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 100.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 176, 206, 105),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(" Questions for your Practice",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: const Color.fromARGB(255, 158, 220, 201),
                      // clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text(
                              'Question for python ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 128, 33, 243),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.black),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: const Color.fromARGB(255, 158, 220, 201),
                      // clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text(
                              'Question for java ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 128, 33, 243),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.black),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
