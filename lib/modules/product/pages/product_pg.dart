import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../../controllers/cart_prov.dart';
import '../../../datasources/local/product_dt.dart';
import '../../../models/x_models.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: Text('Products'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(Icons.shopping_cart),
        )
      ],
    );
  }

  Widget _buildUI(BuildContext context) {
    // CartProvider cartProvider = Provider.of<CartProvider>(context);
    return ListView.builder(
        itemCount: dataProducts.length,
        itemBuilder: (context, index) {
          ProductModel row = dataProducts[index];
          return ListTile(
            leading: Icon(Icons.account_circle,
                size: 25,
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)]),
            title: Text(row.name),
            // trailing: Checkbox(
            //   value: cartProvider.products.contains(row),
            //   onChanged: (val) {},
            // ),
          );
        });
  }
}
