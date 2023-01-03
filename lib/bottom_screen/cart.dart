 import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
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
              SizedBox(
                width: double.infinity,
                height: size.height * .44,
                child: Card(
                  // clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Java programming Course',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Image.asset(
                        'assets/images/background.png',
                        fit: BoxFit.fill,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Go To Module',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontFamily: "OpenSans Bold",
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.pushNamed(
                                            context,
                                            '/registerscreen',
                                          )
                                        })
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * .44,
                child: Card(
                  // clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Python programming Course',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Image.asset(
                        'assets/images/background.png',
                        fit: BoxFit.fill,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Go To Module',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontFamily: "OpenSans Bold",
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.pushNamed(
                                            context,
                                            '/registerscreen',
                                          )
                                        })
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * .44,
                child: Card(
                  // clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Flutter programming Course',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Image.asset(
                        'assets/images/background.png',
                        fit: BoxFit.fill,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Go To Module',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontFamily: "OpenSans Bold",
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.pushNamed(
                                            context,
                                            '/registerscreen',
                                          )
                                        })
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * .44,
                child: Card(
                  // clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Node JS programming Course',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Image.asset(
                        'assets/images/background.png',
                        fit: BoxFit.fill,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Go To Module',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontFamily: "OpenSans Bold",
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.pushNamed(
                                            context,
                                            '/registerscreen',
                                          )
                                        })
                            ]),
                          ),
                        ],
                      ),
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