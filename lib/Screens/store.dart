import 'package:flutter/material.dart';
import 'package:pet_store/Screens/navbar.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';
import 'package:pet_store/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
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
        case 2:
          Navigator.pushNamed(context, 'cart');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.blockSizeVertical! * 5),
            Center(
              child: Text(
                'Store',
                style: poppinsRegular.copyWith(color: kBlack, fontSize: 20),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            Container(
              width: SizeConfig.blockSizeHorizontal! * 100,
              height: SizeConfig.blockSizeVertical! * 5,
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Image(image: AssetImage('assets/images/search.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Container(
                    width: SizeConfig.blockSizeHorizontal! * 75,
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 0.7,
                ),
                itemCount: catsList.length,
                itemBuilder: (BuildContext context, int index) {
                  Cats cat = catsList[index];
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: SizeConfig.blockSizeVertical! * 15,
                      width: SizeConfig.blockSizeHorizontal! * 45,
                      decoration: BoxDecoration(
                        color: kPearl,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              child: Image.asset(
                                cat.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cat.name,
                                  textAlign: TextAlign.start,
                                  style: poppinsMedium.copyWith(fontSize: 20),
                                ),
                                SizedBox(
                                    height:
                                        SizeConfig.blockSizeVertical! * 1.5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\u20B1${cat.price}',
                                      style: poppinsMedium.copyWith(
                                          color: kYellow, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        if (cat.isInCart == false) {
                                          cartProvider.add(cat);
                                        } else {
                                          cartProvider.remove(cat);
                                        }
                                      },
                                      child: Container(
                                        height: 18,
                                        width: 20,
                                        child: Image(
                                          image: AssetImage(cat.isInCart
                                              ? 'assets/images/cart-active.png'
                                              : 'assets/images/cart-inactive.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
