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
      body: Row(
        children: <Widget>[
          const Text('Sup Dude'),
          const Spacer(
            flex: 2,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 26),
                padding: const EdgeInsets.all(18),
                primary: Colors.amber),
            onPressed: () {},
            child: const Text('click me'),
          ),
          const Spacer(
            flex: 2,
          ),
          TextButton(
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 26),
                padding: const EdgeInsets.all(12),
                primary: Colors.purple),
            onPressed: () {},
            child: const Text('Or This One'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click it'),
        backgroundColor: Colors.red[500],
      ),
    );
  } // Widget build
} //-- end class Home
