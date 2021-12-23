import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter',
                  style: const TextStyle(
                    fontFamily: "Lobster",
                    fontSize: 250,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 100,
                      color: Colors.blue,
                      icon: const Icon(
                        Icons.add_circle,
                      ),
                      onPressed: _incrementCounter,
                    ),
                    IconButton(
                      iconSize: 100,
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.blue,
                      ),
                      onPressed: _decrementCounter,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: _resetCounter,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(const Size(120, 50)),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              child: const Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
