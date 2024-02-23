import 'package:flutter/material.dart';
import 'package:pet_store/Screens/navbar.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';

class Details extends StatefulWidget {
  final Cats cat;

  const Details({Key? key, required this.cat}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _index = 1;

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, 'store');
          break;
        case 1:
          Navigator.pushNamed(context, 'store');
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
      body: Column(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical! * 40,
            width: SizeConfig.blockSizeHorizontal! * 100,
            child: Image(
              image: AssetImage(widget.cat.image), // Use cat's image
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
                          widget.cat.name,
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
                        'About ${widget.cat.name}',
                        style: poppinsBold.copyWith(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical! * 10,
                      width: SizeConfig.blockSizeHorizontal! * 28,
                      decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Weight',
                              style: poppinsRegular.copyWith(
                                  color: kDarkGrey, fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.cat.weight,
                              style: poppinsBold.copyWith(
                                  color: kYellow, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 10,
                      width: SizeConfig.blockSizeHorizontal! * 28,
                      decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Height',
                              style: poppinsRegular.copyWith(
                                  color: kDarkGrey, fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.cat.height,
                              style: poppinsBold.copyWith(
                                  color: kYellow, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 10,
                      width: SizeConfig.blockSizeHorizontal! * 28,
                      decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Color',
                              style: poppinsRegular.copyWith(
                                  color: kDarkGrey, fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.cat.color,
                              style: poppinsBold.copyWith(
                                  color: kYellow, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3.5,
                ),
                Text(
                  widget.cat.description,
                  style:
                      poppinsRegular.copyWith(color: kDarkGrey, fontSize: 18),
                )
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
