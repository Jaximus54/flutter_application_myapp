import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Named Routes Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => FirstScreen(),
          '/second': (context) => const SecondScreen(),
        },
      ),
    );

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  final pageButtons = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 26),
          padding: const EdgeInsets.all(18),
          primary: Colors.green[300],
        ),
        onPressed: () {},
        child: const Text('Second Screen'),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 26),
          padding: const EdgeInsets.all(18),
          primary: Colors.blue[500],
        ),
        onPressed: () {
          //todo Navigate to third screen
        },
        child: const Text('Third Screen'),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 26),
          padding: const EdgeInsets.all(18),
          primary: Colors.red[700],
        ),
        onPressed: () {
          //todo Navigate to fourth screen
        },
        child: const Text('Fourth Screen'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 26),
            padding: const EdgeInsets.all(18),
            primary: Colors.green[300],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondScreen()));
          },
          child: const Text('Second Screen'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click it'),
        backgroundColor: Colors.red[500],
      ),
    );
  } // Widget build
} //-- end class Home

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
} //-- end class SecondSreen
