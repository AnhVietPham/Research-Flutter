import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> products = [];

  @override
  void initState() {
    print("[ProductManager State] initState()");
    if (widget.startingProduct != null) {
      products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(Map<String, String> product) {
    setState(() {
      products.add(product);
      print(products);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts),
        ),
        Expanded(child: Products(products, deleteProduct: _deleteProduct))
      ],
    );
  }
}
