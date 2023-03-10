import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EasyList'),
        ),
        body: const ProductManager("Meeting Success!"),
      ),
    );
  }
}
