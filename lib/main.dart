import 'package:flutter/material.dart';
import 'package:pet_store/Screens/cart.dart';
import 'package:pet_store/Screens/details.dart';
import 'package:pet_store/Screens/onboarding.dart';
import 'package:pet_store/Screens/store.dart';
import 'package:pet_store/providers/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CartProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shop',
      initialRoute: '/',
      routes: {
        '/': (context) => const Onboarding(),
        'store': (context) => const Store(),
        'details': (context) => const Details(),
        'cart': (context) => const Cart(),
      },
    );
  }
}
