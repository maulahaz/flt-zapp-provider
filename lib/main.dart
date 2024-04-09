import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/controllers/cart_prov.dart';

import 'configs/x_configs.dart';
import 'modules/features/x_features.dart';
import 'modules/home/x_homes.dart';
import 'modules/product/x_product.dart';
import 'modules/sliver_screen/x_sliver_screens.dart';
import 'pages/examples/form_input_pg.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      theme: Themes.light,
      // theme: MyThemes.darkMode,
      // darkTheme: MyThemes.darkMode,
      initialRoute: '/product',
      routes: {
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/button': (context) => ButtonPage(),
        '/formInput': (context) => FormInputPage(),
        '/sliver': (context) => SliverView(),
      },
    );
  }
}
