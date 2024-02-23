import 'package:flutter/material.dart';
import 'package:pet_store/Screens/navbar.dart';
import 'package:pet_store/app_styles/constants.dart';
import 'package:pet_store/app_styles/size_config.dart';
import 'package:pet_store/models/cats.dart';
import 'package:pet_store/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _index = 2;

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
    CartProvider provider = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Center(
              child: Text(
                'My Cart',
                style: poppinsRegular.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            Consumer<CartProvider>(
              builder: (context, provider, _) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: provider.items.length,
                    itemBuilder: (context, index) {
                      Cats product = provider.items[index];
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kPearl,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: SizeConfig.blockSizeVertical! * 15,
                              width: SizeConfig.blockSizeHorizontal! * 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  product.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: poppinsMedium.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  ' ₱${product.price}',
                                  style: poppinsMedium.copyWith(
                                    fontSize: 14,
                                    color: kYellow,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                provider.remove(product);
                              },
                              icon: Icon(
                                Icons.delete,
                                size: 34,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Spacer(),
            Text(
              'Total: ₱${provider.getCartTotal().toStringAsFixed(2)}',
              style: poppinsBold.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kYellow,
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Checkout Successful"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              provider.removeAll();
                              Navigator.pushNamed(context, 'store');
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
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
