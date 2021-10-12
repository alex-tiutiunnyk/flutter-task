import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _title = 'Test task';
    return MaterialApp(
      title: _title,
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidget();
}

class _MyWidget extends State<MyWidget> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Solid Software Task'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            _color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
          });
        },
        child: const Center(
          child: Text(
            'Hey there',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
