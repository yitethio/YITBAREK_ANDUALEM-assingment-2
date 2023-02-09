import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cafe app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Stack(
            children: const [
              Image(image: AssetImage('assets/coffee-g509a16cab_1920 1.png')),
              Positioned(
                  top: 120,
                  left: 5,
                  child: Image(image: AssetImage('assets/kadisogo.png'))),
              Positioned(
                  top: 35,
                  left: 15,
                  child: Image(image: AssetImage('assets/menu bar.png'))),
              Positioned(
                  top: 175,
                  left: 157,
                  child: Image(image: AssetImage('assets/coffe mug.png'))),
              Positioned(
                  top: 255,
                  left: 17,
                  child: Text('ALL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                      ))),
              Positioned(
                  top: 295,
                  left: 17,
                  child: Text('ABOUT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                      ))),
              Positioned(
                  top: 335,
                  left: 17,
                  child: Text('COFFEE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                      ))),
              Positioned(
                top: 30,
                left: 333,
                child: Icon(
                  Icons.account_circle,
                  size: 56,
                  color: Colors.white,
                ),
              )
            ],
          )),
      Container(
          height: 188,
          width: 361,
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 20.0, offset: Offset(10, 10))],
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color.fromARGB(255, 255, 255, 255)),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
          child: const Text('Drinks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 36,
                color: Color.fromARGB(255, 244, 146, 54),
              ))),
      Padding(
        padding: const EdgeInsets.fromLTRB(12, 34, 0, 0),
        child: ElevatedButton(
          style: buttonPrimary,
          onPressed: () {},
          child: const Text('Order',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                  color: Color.fromARGB(255, 255, 255, 255))),
        ),
      )
    ]));
  }
}
