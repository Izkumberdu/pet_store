import 'package:flutter/material.dart';
import 'package:pet_store/const.dart';
import 'package:pet_store/size_config.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical! * 60,
            width: SizeConfig.blockSizeHorizontal! * 100,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/onboarding-1.jpg'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: SizeConfig.blockSizeHorizontal! * 100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Column(
                  children: [
                    SizedBox(
                      height: 43,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/scroll-circle-active.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/scroll-circle-inactive.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/scroll-circle-inactive.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Your One-Stop Pet Shop Experience!',
                      style: poppinsBold.copyWith(fontSize: 27),
                    ),
                    Text(
                      'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
                      style:
                          poppinsRegular.copyWith(fontSize: 18, color: kGrey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
