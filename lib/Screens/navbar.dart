import 'package:flutter/material.dart';
import 'package:pet_store/app_styles/constants.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  final int currentIndex;
  final Function(int) onTap;

  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: kPearl,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: widget.currentIndex == 0
              ? Image.asset('assets/images/home-active.png')
              : Image.asset('assets/images/home-inactive.png'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 1
              ? Image.asset('assets/images/catalog-active.png')
              : Image.asset('assets/images/catalog-inactive.png'),
          label: 'Catalog',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 2
              ? Image.asset('assets/images/cart-active.png')
              : Image.asset('assets/images/cart-inactive.png'),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 3
              ? Image.asset('assets/images/profile-active.png')
              : Image.asset('assets/images/profile-inactive.png'),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      selectedLabelStyle: poppinsRegular.copyWith(
        fontSize: 14,
      ),
      selectedItemColor: kYellow,
    );
  }
}
