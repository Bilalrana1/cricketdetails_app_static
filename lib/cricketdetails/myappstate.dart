import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int matchpalyes = 228;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    matchpalyes = 228;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cricket Details",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 71, 86),
        appBar: AppBar(
          title: const Text("Cricket Details",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 192, 75, 75),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/baber.png",
                  width: 150,
                  height: 150,
                ),
                const Divider(
                  height: 40,
                  color: Color.fromARGB(255, 7, 7, 7),
                ),
                const Text(
                  "Name",
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(187, 255, 249, 249)),
                ),
                const Text(
                  "Baber Azam",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Age",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(187, 255, 249, 249)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "27",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Number of International Games",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(187, 255, 249, 249)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$matchpalyes",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 192, 75, 75),
          onPressed: () {
            setState(() {
              matchpalyes = matchpalyes + 1;
            });
          },
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(184, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
