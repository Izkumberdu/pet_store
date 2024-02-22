import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: widget.currentIndex == 0
              ? Image.asset('assets/images/home_selected_icon.png')
              : Image.asset('assets/images/home_unselected_icon.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 1
              ? Image.asset('assets/images/bookmark_selected_icon.png')
              : Image.asset('assets/images/bookmark_unselected_icon.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 2
              ? Image.asset('assets/images/notification_selected_icon.png')
              : Image.asset('assets/images/notification_unselected_icon.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 3
              ? Image.asset('assets/images/profile_selected_icon.png')
              : Image.asset('assets/images/profile_unselected_icon.png'),
          label: '',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
