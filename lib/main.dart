import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my second app ish'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Image.asset('assets/space3.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.red[500],
      ),
    );
  } // Widget build
} //-- end class Home
