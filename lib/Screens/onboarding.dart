import 'package:flutter/material.dart';
import 'package:pet_store/Screens/store.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/onboarding_constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<OnboardingConstants> pagesContent = [
    OnboardingConstants(
      imagePath: 'assets/images/onboarding-1.jpg',
      title: 'Your One-Stop Pet Shop Experience!',
      description:
          'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
    ),
    OnboardingConstants(
      imagePath: 'assets/images/onboarding-2.jpg',
      title: 'Discover a World of Cats!',
      description:
          'Explore a variety of breeds, from majestic Maine Coons to playful Siamese. Our wide selection of feline friends will surely capture your heart.',
    ),
    OnboardingConstants(
      imagePath: 'assets/images/onboarding-3.jpg',
      title: 'Find Everything You Need',
      description:
          'Explore our wide range of pet supplies and accessories to keep your furry friends happy and healthy. Find your perfect purr-fect companion today!',
    ),
  ];

  int currentPageIndex = 0;

  void nextPage(BuildContext context) {
    setState(() {
      currentPageIndex++;
      if (currentPageIndex == 3 || currentPageIndex == 4) {
        Navigator.pushNamed(context, 'store');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);

    return Scaffold(
      body: Container(
        width: SizeConfig.blockSizeHorizontal! * 100,
        height: SizeConfig.blockSizeVertical! * 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: AssetImage(pagesContent[currentPageIndex].imagePath),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
                width: SizeConfig.blockSizeHorizontal! * 100,
                height: SizeConfig.blockSizeVertical! * 35,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 33,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            pagesContent.length,
                            (index) => Container(
                              child: Image(
                                image: AssetImage(
                                  index == currentPageIndex
                                      ? 'assets/images/scroll-circle-active.png'
                                      : 'assets/images/scroll-circle-inactive.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        pagesContent[currentPageIndex].title,
                        textAlign: TextAlign.center,
                        style: poppinsBold.copyWith(fontSize: 27),
                      ),
                      Text(
                        pagesContent[currentPageIndex].description,
                        textAlign: TextAlign.center,
                        style:
                            poppinsRegular.copyWith(fontSize: 18, color: kGrey),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Container(
                        height: 52,
                        width: SizeConfig.blockSizeHorizontal! * 100,
                        decoration: BoxDecoration(
                          color: kYellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            nextPage(context);
                          },
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: poppinsBold.copyWith(
                                fontSize: 17,
                                color: kWhite,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
