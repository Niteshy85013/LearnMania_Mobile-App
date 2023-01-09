import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Your Courses",
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 6, 6, 6)),
        ),
        centerTitle: true,
        toolbarHeight: 100.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 239, 230, 230),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                // clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Java programming Course',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    Image.asset(
                      'assets/images/javamain.png',
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
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
              child: Card(
                // clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Python programming Course',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    Image.asset(
                      'assets/images/pythonmain.png',
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
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
              child: Card(
                // clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Flutter programming Course',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    Image.asset(
                      'assets/images/pluttermain.png',
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
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
              child: Card(
                // clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Node JS programming Course',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    Image.asset(
                      'assets/images/nodemain.png',
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
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
    );
  }
}
