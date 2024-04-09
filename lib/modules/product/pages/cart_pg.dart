import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/cart_prov.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text('Cart page'),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(
      builder: (context, provider, _){
        return Container(child: Center(child: Text('Test')),);
      },
    );
  }
}
