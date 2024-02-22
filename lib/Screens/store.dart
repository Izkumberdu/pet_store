import 'package:flutter/material.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
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
                  mainAxisSpacing: 20.0, // Padding between rows
                  crossAxisSpacing: 20.0, // Padding between columns
                  childAspectRatio: 0.7, // Aspect ratio for each item
                ),
                itemCount: catsList.length,
                itemBuilder: (BuildContext context, int index) {
                  Cats cat = catsList[index];
                  return Padding(
                    padding:
                        EdgeInsets.all(8.0), // Padding around each cat item
                    child: Container(
                      height: SizeConfig.blockSizeVertical! * 15,
                      width: SizeConfig.blockSizeHorizontal! * 40,
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              cat.image,
                              fit: BoxFit.cover,
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
                                  style: poppinsRegular.copyWith(fontSize: 20),
                                ),
                                SizedBox(
                                    height: SizeConfig.blockSizeVertical! * 2),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\u20B1 ${cat.price}', // Unicode character for PHP sign
                                      style: poppinsMedium.copyWith(
                                          color: kYellow, fontSize: 16),
                                    ),
                                    Container(
                                      height: 12,
                                      width: 14,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cart-active.png')),
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
    );
  }
}
