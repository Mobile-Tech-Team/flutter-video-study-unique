import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
  final List<String> products;

  const Products(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/first.jpg'),
                  Text(
                    element,
                    style: const TextStyle(fontSize: 26, color: Colors.red),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
