import 'package:flutter/material.dart';
import 'package:flutter_shop/data/dummy_data.dart';
import 'package:flutter_shop/models/product.dart';

class ProductsOverviewPage extends StatefulWidget {

  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  List<Product> loadedProducts = [];

  @override
  void initState() {
    super.initState();
    loadedProducts = dummyProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('Minha Loja'),
      )),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: loadedProducts.length,
          itemBuilder: (context, index) => Text(loadedProducts[index].title),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
