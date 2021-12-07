import 'package:flutter/material.dart';
import 'jsonparse.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricket',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const JsonParseDemo(),
    );
  }
}
