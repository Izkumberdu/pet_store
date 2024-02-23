import 'package:flutter/material.dart';
import 'package:pet_store/Screens/navbar.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _index = 2;

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, 'store');
          break;
        case 1:
          Navigator.pushNamed(context, 'details');
          break;
        case 2:
          Navigator.pushNamed(context, 'cart');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
