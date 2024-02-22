import 'package:flutter/material.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';

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
            Container(
              width: SizeConfig.blockSizeHorizontal! * 100,
              height: SizeConfig.blockSizeVertical! * 5,
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    child: Image(image: AssetImage('')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
