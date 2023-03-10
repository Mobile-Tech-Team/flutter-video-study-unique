import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  const ProductManager(this.startingProduct, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced meeting');
              });
            },
            child: const Text('Add product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
