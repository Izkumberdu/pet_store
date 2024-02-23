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
          ),
          Container(
              width: SizeConfig.blockSizeHorizontal! * 100,
              height: SizeConfig.blockSizeVertical! * 13,
              decoration: BoxDecoration(
                  color: kPearl,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Persian Cat',
                          style: poppinsBold.copyWith(fontSize: 26),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.1,
                        ),
                        Text('Canada · 8m ',
                            style: poppinsRegular.copyWith(
                                fontSize: 20, color: kGrey)),
                      ],
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 7,
                      width: SizeConfig.blockSizeHorizontal! * 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kYellow),
                      child: Icon(
                        Icons.shopping_cart_checkout,
                        color: kWhite,
                        size: 34,
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Container(
                      child: Image(image: AssetImage('assets/images/pet.png')),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Baseline(
                      baseline: SizeConfig.blockSizeVertical! * 2.4,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'About The Persian Cat',
                        style: poppinsBold.copyWith(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
