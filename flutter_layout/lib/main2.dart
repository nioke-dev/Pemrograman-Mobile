import 'package:flutter/material.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan row dan column"),
        ),
        body: const Row(children: [
          Column(
            children: [
              Text('text 1'),
              Text('text 2'),
              Text('text 3'),
              Text('text 4'),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('text 5'),
                    Text('text 6'),
                    Text('text 7'),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
