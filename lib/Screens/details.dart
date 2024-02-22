import 'package:flutter/material.dart';
import 'package:pet_store/Screens/navbar.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _index = 0;

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
        case 3:
          Navigator.pushNamed(context, '');
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
      body: Column(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical! * 40,
            width: SizeConfig.blockSizeHorizontal! * 100,
            child: Image(
              image: AssetImage('assets/images/bobtail.jpg'),
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
