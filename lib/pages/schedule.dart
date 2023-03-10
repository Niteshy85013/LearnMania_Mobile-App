import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.black, size: 30),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        title: const Text(
          "Schedule Section",
          style: TextStyle(fontSize: 27, color: Colors.black),
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
              size: const Size(65, 65),
              child: ClipOval(
                child: Material(
                  color: const Color.fromARGB(255, 231, 111, 81),
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.pushNamed(context, '/addschedulescreen');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.add, size: 54), // <-- Icon
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(" Your Schedule",
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
                              'Flutter is Google???s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
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
                                      color: const Color.fromARGB(
                                          255, 231, 111, 81),
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
                                      color: const Color.fromARGB(
                                          255, 108, 194, 213),
                                      child: InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const <Widget>[
                                            Icon(Icons.edit,
                                                size: 45), // <-- Icon
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
                              'Flutter is Google???s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
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
                                      color: const Color.fromARGB(
                                          255, 231, 111, 81),
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
                                      color: const Color.fromARGB(
                                          255, 108, 194, 213),
                                      child: InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const <Widget>[
                                            Icon(Icons.edit,
                                                size: 45), // <-- Icon
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
                              'Flutter is Google???s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
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
                                      color: const Color.fromARGB(
                                          255, 231, 111, 81),
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
                                      color: const Color.fromARGB(
                                          255, 108, 194, 213),
                                      child: InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const <Widget>[
                                            Icon(Icons.edit,
                                                size: 45), // <-- Icon
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
                              'Flutter is Google???s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
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
                                      color: const Color.fromARGB(
                                          255, 231, 111, 81),
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
                                      color: const Color.fromARGB(
                                          255, 108, 194, 213),
                                      child: InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const <Widget>[
                                            Icon(Icons.edit,
                                                size: 45), // <-- Icon
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
          ],
        ),
      ),
    );
  }
}
